
drop table if exists AOC_2024_Day15_Rocks
create table AOC_2024_Day15_Rocks(r int, c int )
create unique clustered index IX_AOC_2024_Day15_Rocks on AOC_2024_Day15_Rocks(r, c)
GO


create or alter function fn_AOC_2024_Day15_Move(@r int,
												@c int,
												@Boxes varchar(max),
												@Dir char(1),
												@BoxWidth tinyint,
												@MaxRow int,
												@MaxCol int
											) returns table
as
return with Boxes as
			(select p.*
				from string_split_RL(@Boxes, ',', 1) -- all the box locations, concat into a string
					cross apply 
					(select cast(parsename([value], 2) as int) r, cast(parsename([value], 1) as int) c) p -- get r and c 
			)
			, i1 as -- to find the next one on the four directions
			(select *
					, lag(c, 1, -1) over(partition by r order by c) NextWest  
					, lead(c, 1, 9999) over(partition by r order by c) NextEast  
					, lag(r, 1, -1) over(partition by c order by r) NextNorth 
					, lead(r, 1, 9999) over(partition by c order by r) NextSouth 
				from Boxes
			)
			, i2 as -- last box from current location
			(select r, c
					, isnull(max(WestEnd) over(partition by r order by c), 1) WestEnd -- Leftend
					, isnull(min(EastEnd) over(partition by r order by c desc), @MaxCol) EastEnd -- rightEnd
					, isnull(max(NorthEnd) over(partition by c order by r), 1) NorthEnd --northEnd 
					, isnull(min(SouthEnd) over(partition by c order by r desc), @MaxRow) SouthEnd -- 
				from i1
					cross apply (select iif(NextWest < c - 1, c, null) WestEnd
										, iif(NextEast > c + 1, c, null) EastEnd
										, iif(NextNorth < r - 1, r, null) NorthEnd
										, iif(NextSouth > r + 1, r, null) SouthEnd
								) e
			), i3 as
			(select b.r + case Dir
								when '^' then -1
								when 'v' then 1
								else 0
							end r
					, b.c + case Dir
								when '<' then -1
								when '>' then 1
								else 0
							end c
					, Dir
				from i2 b
					left join AOC_2024_Day15_Rocks r on (@Dir = '^' and r.r = NorthEnd - 1 and r.c = b.c)
													or (@Dir = 'v' and r.r = SouthEnd + 1 and r.c = b.c)
													or (@Dir = '<' and r.r = b.r and r.c = WestEnd - 1)
													or (@Dir = '>' and r.r = b.r and r.c = EastEnd + 1)
					cross apply(select iif(r.r > 0, 1, 0) Rock
									, iif((@Dir = '^' and @r = SouthEnd + 1 and @c = b.c)
												or (@Dir = 'v' and @r = NorthEnd - 1 and @c = b.c)
												or (@Dir = '<' and @r = b.r and @c = EastEnd + 1)
												or (@Dir = '>' and @r = b.r and @c = WestEnd - 1)
											, 1, 0) Robot
									, iif((@Dir = '^' and NorthEnd = 1)
											or (@Dir = 'v' and SouthEnd = @MaxRow)
											or (@Dir = '<' and WestEnd = 1)
											or (@Dir = '>' and EastEnd = @MaxCol)
													, 1, 0) Wall
								) r1
					cross apply (select iif(Robot = 1
												, iif(Rock = 1 or Wall = 1, '', @Dir)
												, null
											) Dir
								) d
				)
			, i4 as
			(select string_agg(cast(concat(r, '.', c) as varchar(max)), ',') Boxes, iif(max(Dir) = '', '', isnull(max(Dir), @Dir)) Dir
				from i3
			)
		select Boxes
			, @r + case when Dir = '^' and @r > 1 and Rock = 0 then -1
						when Dir = 'v' and @r < @MaxRow and Rock = 0 then 1
						else 0
					end r
			, @c + case when Dir = '<' and @c > 1 and Rock = 0 then -1
						when Dir = '>' and @c < @MaxCol and Rock = 0 then 1
						else 0
					end c
		from i4
			left join AOC_2024_Day15_Rocks r on (@Dir = '^' and r.r = @r - 1 and r.c = @c)
											or (@Dir = 'v' and r.r = @r + 1 and r.c = @c)
											or (@Dir = '<' and r.r = @r and r.c = @c - 1)
											or (@Dir = '>' and r.r = @r and r.c = @c + 1)
			cross apply(select iif(r.r > 0, 1, 0) Rock
						) r1



GO





create or alter function fn_AOC_2024_Day15_GetAffectedBoxes(@r int,
															@c int,
															@Width tinyint,
															@Boxes varchar(max),
															@Dir char(1),
															@MaxRow int,
															@MaxCol int
															) returns table
as
return with Boxes as
		(select p.*
			from string_split_RL(@Boxes, ',', 1)
				cross apply (select cast(parsename([value], 2) as int) r, cast(parsename([value], 1) as int) c) p
		)
		select r, c, 1 Width
				, iif((@Dir = '^'
						and (exists (select *
										from AOC_2024_Day15_Rocks r
										where r.r = b.r - 1
											and r.c between b.c and b.c + 1
										)
								or b.r = 1
					)
					or (@Dir = 'v'
						and (exists (select *
										from AOC_2024_Day15_Rocks r
										where r.r = b.r + 1
											and r.c between b.c and b.c + 1
										)
								or b.r = @MaxRow
							)
						)
					), 1, 0) IsBlocked
			from Boxes b
			where (@Dir = '^'
					and @r = r + 1
					and c between @c - 1 and @c + @Width
					)
					or
					(@Dir = 'v'
					and @r = r - 1
					and c between @c - 1 and @c + @Width
					)
GO





create or alter function fn_AOC_2024_Day15_GetVerticalMove(@r int,
															@c int,
															@Boxes varchar(max),
															@Dir char(1),
															@MaxRow int,
															@MaxCol int
															) returns table
as
return with RoboStart as
			(select @r r, @c c
				, iif((@Dir = '^'
							and (exists (select *
											from AOC_2024_Day15_Rocks
											where r = @r - 1
												and c = @c
											)
								or @r = 1
								)
						)
						or (@Dir = 'v'
							and (exists (select *
											from AOC_2024_Day15_Rocks
											where r = @r + 1
												and c = @c
											)
								or @r = @MaxRow
								)
						), 1, 0) IsBlocked
			)
			, rec as
			(select r, c, 0 Width, IsBlocked, 0 Steps
				from RoboStart
				union all
				select b.r, b.c, b.Width, b.IsBlocked, Steps + 1
				from rec r
					cross apply fn_AOC_2024_Day15_GetAffectedBoxes(r.r, r.c, r.Width, @Boxes, @Dir, @MaxRow, @MaxCol) b
				where r.IsBlocked = 0
			)
			, res as
			(select distinct r, c, max(IsBlocked) over() IsBlocked
				from rec
			)
		select r, c, iif(@Dir = '^', -1, 1) rDiff
		from res
		where IsBlocked = 0


GO


create or alter function fn_AOC_2024_Day15_MoveVertical(@r int,
														@c int,
														@Boxes varchar(max),
														@Dir char(1),
														@MaxRow int,
														@MaxCol int
														) returns table
as
return with Boxes as
			(select p.*
				from string_split_RL(@Boxes, ',', 1)
					cross apply (select cast(parsename([value], 2) as int) r, cast(parsename([value], 1) as int) c) p
			)
			,
			AffectedObjects as
			(select *
				from fn_AOC_2024_Day15_GetVerticalMove(@r, @c, @Boxes, @Dir, @MaxRow, @MaxCol)
			)
		select string_agg(cast(cast(b.r + isnull(rDiff, 0) as varchar(10)) + '.' + cast(b.c as varchar(10)) as varchar(max)), ',') Boxes, @r + isnull(max(rDiff), 0) r, @c c
		from Boxes b
			full outer join AffectedObjects a on a.r = b.r
											and a.c = b.c


GO



create or alter function fn_AOC_2024_Day15_Move2(@r int,
													@c int,
													@Boxes varchar(max),
													@Dir char(1),
													@MaxRow int,
													@MaxCol int
													) returns table
as
return select *
		from fn_AOC_2024_Day15_Move(@r, @c, @Boxes, @Dir, 2, @MaxRow, @MaxCol)
		where @Dir in ('<', '>')
		union all
		select *
		from fn_AOC_2024_Day15_MoveVertical(@r, @c, @Boxes, @Dir, @MaxRow, @MaxCol)
		where @Dir in ('^', 'v')



GO


declare @Input varchar(max) ='##########
#..O..O.O#
#......O.#
#.OO..O.O#
#..O@..O.#
#O#..O...#
#O..O..O.#
#.OO.O.OO#
#....O...#
##########

<vv>^<v^>v>^vv^v>v<>v^v<v<^vv<<<^><<><>>v<vvv<>^v^>^<<<><<v<<<v^vv^v>^
vvv<<^>^v^^><<>>><>^<<><^vv^^<>vvv<>><^^v>^>vv<>v<<<<v<^v>^<^^>>>^<v<v
><>vv>v^v^<>><>>>><^^>vv>v<^^^>>v^v^<^^>v^^>v^<^v>v<>>v^v^<v>v^^<^^vv<
<<v<^>>^^^^>>>v^<>vvv^><v<<<>^^^vv^<vvv>^>v<^^^^v<>^>vvvv><>>v^<<^^^^^
^><^><>>><>^^<<^^v>>><^<v>^<vv>>v>>>^v><>^v><<<<v>>v<v<v>vvv>^<><<>^><
^>><>^v<><^vvv<^^<><v<<<<<><^v<<<><<<^^<v<^^^><^>>^<v^><<<^>>^v<v^v<v^
>^>>^v>vv>^<<^v<>><<><<v<<v><>v<^vv<<<>^^v^>^^>>><<^v>>v^v><^^>>^<>vv^
<><^^>^^^<><vvvvv^v<v<<>^v<v>v<<^><<><<><<<^^<<<^<<>><<><^^^>^^<>^>v<>
^^>vv<^v^v<vv>^<><v<^v>^^^>>>^^vvv^>vvv<>>>^<^>>>>>^<<^v>^vvv<>^<><<v>
v^^>>><<^^<>>^v^<v^vv<>v^<<>^<^v^v><^<<<><<^<v><v<>vv>>v><v^<vv<>v^<<^' 
drop table if exists #Maze
drop table if exists #Moves
drop table if exists #Final
drop table if exists #Maze2
drop table if exists #Final2

;with i as
	(select r.ordinal - 1 r, c.[value] - 1 c, Symbol, max(r.ordinal) over()  - 2 MaxRow, max(c.[value]) over() - 2 MaxCol
		from (select left(@Input, charindex(concat(char(13), char(10), char(13), char(10)), @Input, 1) - 1) Maze) m
			cross apply string_split_RL(replace(Maze, char(10), ''), char(13), 1) r
			cross apply generate_series_RL(cast(1 as int), cast(len(r.[value]) as int), cast(1 as int)) c
			cross apply (select substring(r.[value], c.[value], 1) Symbol) s
	)
select *
into #Maze
from i
where Symbol != '.'
	and r not in (0, MaxRow + 1)
	and c not in (0, MaxCol + 1)

select * from #maze 


insert into AOC_2024_Day15_Rocks
select r, c
from #Maze
where Symbol = '#'


select * from AOC_2024_Day15_Rocks 



select c.[value] ord, cast(substring(Moves, c.[value], 1) as char(1)) Dir
into #Moves
from (select replace(replace(substring(@Input, charindex(concat(char(13), char(10), char(13), char(10)), @Input, 1) + 4, len(@Input)), char(13), ''), char(10), '') Moves) m
	cross apply generate_series_RL(cast(1 as int), cast(len(Moves) as int), cast(1 as int)) c
option (maxrecursion 0)

select * from #moves 


create unique clustered index IX_#Moves on #Moves(ord)

;with Rob as
	(select r, c, MaxRow, MaxCol
		from #Maze
		where Symbol = '@'
		) -- find the initial place of robot 
	, Starting as
	(select r, c, Boxes, MaxRow, MaxCol
		from Rob
			cross join (select string_agg(cast(concat(r, '.', c) as varchar(max)), ',') Boxes
							from #Maze
							where Symbol = 'O'
						) m
	) --  select * from starting
	, rec as
	(select cast(r as int) r, c, Boxes, MaxRow, MaxCol, 0 Steps, cast(null as char(1)) Dir
		from Starting
		union all
		select cast(m.r as int), m.c, m.Boxes, r.MaxRow, r.MaxCol, n.NewSteps, v.Dir
		from rec r
			cross apply (select Steps + 1 NewSteps) n
			inner join #Moves v on ord = NewSteps
			cross apply fn_AOC_2024_Day15_Move(r, c, Boxes, v.Dir, 1, MaxRow, MaxCol) m
	) select * from rec
select top 1 *
into #Final
from rec
order by Steps desc
option (maxrecursion 32767)





select sum(100*p.r + p.c) Answer1
from #Final f
	cross apply string_split_RL(Boxes, ',',1)
	cross apply (select cast(parsename([value], 2) as bigint) r, cast(parsename([value], 1) as bigint) c) p

--Part 2
;with i as
	(select r.ordinal - 1 r, c.[value] - 2 c, Symbol, max(r.ordinal) over() - 2 MaxRow, max(c.[value]) over() -4 MaxCol
		from (select replace(replace(replace(replace(left(@Input, charindex(concat(char(13), char(10), char(13), char(10)), @Input, 1) - 1), '#', '##'), 'O', '[]'), '.', '..'), '@', '@.') Maze) m
			cross apply string_split_RL(replace(Maze, char(10), ''), char(13), 1) r
			cross apply generate_series_RL(cast(1 as int), cast(len(r.[value]) as int), cast(1 as int)) c
			cross apply (select substring(r.[value], c.[value], 1) Symbol) s
	)
select *
into #Maze2
from i
where Symbol != '.'
	and r between 1 and MaxRow
	and c between 1 and MaxCol

truncate table AOC_2024_Day15_Rocks
insert into AOC_2024_Day15_Rocks
select r, c
from #Maze2
where Symbol = '#'

;with Rob as
	(select r, c, MaxRow, MaxCol
		from #Maze2
		where Symbol = '@'
		)
	, Starting as
	(select r, c, Boxes, MaxRow, MaxCol
		from Rob
			cross join (select string_agg(cast(concat(r, '.', c) as varchar(max)), ',') Boxes
							from #Maze2
							where Symbol = '['
						) m
	)
	, rec as
	(select cast(r as int) r, c, Boxes, MaxRow, MaxCol, 0 Steps, cast(null as char(1)) Dir
		from Starting
		union all
		select cast(m.r as int), m.c, m.Boxes, r.MaxRow, r.MaxCol, n.NewSteps, v.Dir
		from rec r
			cross apply (select Steps + 1 NewSteps) n
			inner join #Moves v on ord = NewSteps
			cross apply fn_AOC_2024_Day15_Move2(r, c, Boxes, v.Dir, MaxRow, MaxCol) m
	)
select top 1 *
into #Final2
from rec
order by Steps desc
option (maxrecursion 32767)

select sum(100*p.r + p.c + 1) Answer2
from #Final2 f
	cross apply string_split_RL(Boxes, ',', 1 )
	cross apply (select cast(parsename([value], 2) as bigint) r, cast(parsename([value], 1) as bigint) c) p


