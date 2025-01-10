drop table if exists #input 


--select id = '1' , col = '............' into #input union all select id = '2' , col = '........0...' union all select id = '3' , col = '.....0......' union all select id = '4' , col = '.......0....' union all select id = '5' , col = '....0.......' union all select id = '6' , col = '......A.....' union all select id = '7' , col = '............' union all select id = '8' , col = '............' union all select id = '9' , col = '........A...' union all select id = '10' , col = '.........A..' union all select id = '11' , col = '............' union all select id = '12' , col = '............' 

select id = '1' , col = '..................................................' into #input union all select id = '2' , col = '.r................................................' union all select id = '3' , col = '..........................I.......................' union all select id = '4' , col = '........................I.........................' union all select id = '5' , col = '................................................M.' union all select id = '6' , col = '............h......................A..............' union all select id = '7' , col = '..7....................I.........h................' union all select id = '8' , col = '......7..................................M....9...' union all select id = '9' , col = '.o.....U..........................................' union all select id = '10' , col = '......................................O...........' union all select id = '11' , col = '....c.................J................O...M...A..' union all select id = '12' , col = '..................................................' union all select id = '13' , col = '...R...7..........................................' union all select id = '14' , col = '..............r...................................' union all select id = '15' , col = '...................J..................9...........' union all select id = '16' , col = '...7..K......UJ...................................' union all select id = '17' , col = '......0...U.........................x.............' union all select id = '18' , col = '.......R.......0..B......................x........' union all select id = '19' , col = '.......................k.....Z.......9............' union all select id = '20' , col = '.......L.........I.....J............m.............' union all select id = '21' , col = '.....K.BR........r.0.C............................' union all select id = '22' , col = '.......K.BR......c................................' union all select id = '23' , col = '..................h....m....Al...........H........' union all select id = '24' , col = '..............L..k.......h...m..........x..9......' union all select id = '25' , col = '........................Z.....m........xO.........' union all select id = '26' , col = '..........0................l......................' union all select id = '27' , col = '.6..................b.............................' union all select id = '28' , col = '............k...o..............Z..................' union all select id = '29' , col = '........4.....o...........L.......................' union all select id = '30' , col = '....................Xo............................' union all select id = '31' , col = '...........8..B..L.........i......................' union all select id = '32' , col = '..z...............bX..........A...................' union all select id = '33' , col = 'j........z...X......C.......i........5............' union all select id = '34' , col = '.b...H6.......................U.......l...........' union all select id = '35' , col = '..................X...............................' union all select id = '36' , col = '...6......................Z..........a............' union all select id = '37' , col = '....6........c............5.........1.............' union all select id = '38' , col = '.4.......................5........................' union all select id = '39' , col = '..........k.......H1l.............................' union all select id = '40' , col = '2.................C.......i...................u...' union all select id = '41' , col = '.............a....2...............................' union all select id = '42' , col = '.....z....H.......1..8.....................u......' union all select id = '43' , col = '...........j...b..................................' union all select id = '44' , col = '3.........j.........................a.............' union all select id = '45' , col = '...4................a.............................' union all select id = '46' , col = '..M................j.....1..........5.............' union all select id = '47' , col = '............................................u.....' union all select id = '48' , col = '..4..3...........i................................' union all select id = '49' , col = 'z3.................2..............................' union all select id = '50' , col = '..........8..................2.C..................' 

-- select * from #input

-- Idea 
-- To find all the non . characters
-- match it with another same character
-- check the manhattan distance
-- find the corresponding cell for antinode 
-- repeat for all the characters
-- get the distinct antinode location

drop table if exists #base 

; with cte as 
(
select 
pos = 1
, r_length = len(col)
, r = cast(id as int)
, c = 1 
, ch = left(col, 1)
, rem = right(col, len(col) - 1)
from #input
union all 
select 
pos = (r-1) * r_length + c+1
, r_length 
, r 
, c + 1
, ch = left(rem, 1)
, rem = right(rem, len(rem) - 1)
from cte
where len(rem) > 0 
)
select 
* 
into #base
from cte
OPTION(maxrecursion 0)


-- select * from #base 
-- order by r, c 

drop table if exists #calc_location

select 
a.ch
, a_pos = a.pos 
, b_pos = b.pos
, ar = a.r
, ac = a.c 
, br = b.r
, bc = b.c
, loc_1_r = a.r + dist.dist_r
, loc_1_c = a.c + dist.dist_c  

, loc_2_r =  b.r - dist.dist_r 
, loc_2_c =  b.c - dist.dist_c

into #calc_location
from #base a inner join #base b
on ascii(a.ch) = ascii(b.ch) -- SQL server is case insensitive
and a.ch != '.' 
and a.pos < b.pos -- to avoid double finding
cross apply 
    (select dist_r =  a.r-b.r 
           , dist_c = a.c-b.c 
         ) dist


-- select * from #calc_location  order by 1


drop table if exists #valid_loc

select 
ch
, loc_r = loc_1_r
, loc_c = loc_1_c
into #valid_loc
from #calc_location 
    cross apply (
                 select max_c = max(c)
                        , max_r = max(r)
                 from #base
                 ) bound
where 
loc_1_r between 1 and bound.max_r
and loc_1_c between 1 and bound.max_c

union all 

select 
ch
, loc_2_r
, loc_2_c
from #calc_location 
    cross apply (
                 select max_c = max(c)
                        , max_r = max(r)
                 from #base
                 ) bound
where 
loc_2_r between 1 and bound.max_r
and loc_2_c between 1 and bound.max_c



-- select * from #valid_loc 
-- order by  2

-- 376  -- too high, due to character comparison, SQL server is case insensitive 
-- correct answer: 259 
select 
ans = count(distinct concat(loc_r, ',', loc_c))
from #valid_loc



--===============================================================================================


-- Q2: same approach. 
-- when finding the locations, finding all the ones on the top, until reach boundary
-- same to find the other one on the bottom, until reach the boundary 
-- A - get all the possible antinode location 
-- B - get all the antenna location, except for the ones only appears once in the grid 
-- C - union the above all

drop table if exists #calc_location_Q2

; 
with maxIter as -- total iteration should not be the max( total_r, total_c ) of the input
(select iterLimit = iif (max(r) >= max(c),  max(r), max(c)) from #base) 
, cte as 
(
select 
n = 1
, a.ch
, a_pos = a.pos 
, b_pos = b.pos
, ar = a.r
, ac = a.c 
, br = b.r
, bc = b.c

, dist.dist_r 
, dist.dist_c
, loc_1_r = a.r + dist.dist_r
, loc_1_c = a.c + dist.dist_c

, loc_2_r = b.r - dist.dist_r 
, loc_2_c = b.c - dist.dist_c

from #base a 
inner join #base b
on ascii(a.ch) = ascii(b.ch) -- SQL server is case insensitive
and a.ch != '.' 
and a.pos < b.pos -- to avoid double finding
cross apply 
    (select dist_r = a.r - b.r  , dist_c = a.c-b.c   ) dist

union all 

select 
n + 1
, ch 
, a_pos
, b_pos
, ar 
, ac 
, br 
, bc 

, dist_r 
, dist_c

, loc_1_r = ar + currN * dist_r
, loc_1_c = ac + currN * dist_c

, loc_2_r = br - currN * dist_r 
, loc_2_c = bc - currN * dist_c

from cte cross apply (select currN = n+1) iter
where n <= (select iterLimit from maxIter)
)
select * into #calc_location_Q2   from cte 
option (maxrecursion 0)



drop table if exists #valid_loc_q2

select 
ch
, loc_r = loc_1_r
, loc_c = loc_1_c
into #valid_loc_q2
from #calc_location_Q2
    cross apply (
                 select max_r = max(r) 
                        , max_c = max(c)
                 from #base
                 ) bound
where 
loc_1_r between 1 and bound.max_r
and loc_1_c between 1 and bound.max_c

union all 

select 
ch
, loc_2_r
, loc_2_c
from #calc_location_Q2
    cross apply (
                 select max_r = max(r) 
                        , max_c = max(c)
                 from #base
                 ) bound
where 
loc_2_r between 1 and bound.max_r
and loc_2_c between 1 and bound.max_c



 
-- to find antennas location, except for those appears only once
-- for the ones appear only once, the location is still valid, if it happes to be antinode, which is calculated above

drop table if exists #valid_antennas

select r, c 
into #valid_antennas
from #base 
where ch != '.'
except 
select r, c from #base 
where ascii(ch) in (select ascii(ch) from #base where ch != '.' group by ascii(ch) having count(*) = 1)

-- select * from #valid_antennas

--  927 
select 
ans = count(distinct concat('(', c, ',', r, ')'))
from 
(
    select r, c from #valid_antennas
    union 
    select loc_r, loc_c from #valid_loc_q2
) _
 



 