rollback

drop table if exists #input

-- select col = '125 17' into #input
select col = '0 7 198844 5687836 58 2478 25475 894' into #input
-- select col = '0' into #input


-- idea: for each number, follow the rules to transform.
-- using outer apply to avoid missing numbers from the previous step 
-- each stone performs one action at one step, so it generates either one or two rows at a time.


drop table if exists #base

; with base as 
(
    select col = col + ' ' from #input
)
, cte as 
(
select 
id = 1 
, curr = cast(left(col, CHARINDEX(' ', col) - 1) as bigint)
, rem = right(col, datalength(col) - CHARINDEX(' ', col))
from base

union all 

select id + 1
, cast (left(rem, CHARINDEX(' ', rem)-1) as bigint)
, right(rem, DATALENGTH(rem) - CHARINDEX(' ', rem)) 
from cte
where DATALENGTH(rem) > 1 
) 
select * into #base from cte 


 
; with cte as 
(
select  
iter = 0
, prev = curr
, curr
, og = curr 
from #base
union all 
 
 
select 
iter = iter + 1
, prev = curr 
, curr = case when curr = 0 then zero.calc 
              when tl.total_length % 2 = 0 then split.calc
              when curr != 0 and tl.total_length % 2 != 0 then others.calc
         end
, og 
from cte 
    outer apply (select calc = 1 where curr = 0) zero
    outer apply (select total_length = len(cast(curr as varchar(max))) ) tl
    outer apply (select calc = cast( left(curr, total_length / 2 ) as bigint)  
                    where total_length % 2 = 0  -- first part
                    union all 
                select calc = right(curr, total_length / 2)  
                where total_length %2 = 0 -- second part 
                )  split
    outer apply (select calc = curr * 2024 where total_length %2 != 0 and curr != 0 ) others 
where iter < 25 -- 25
)
select res = count(*) from cte  -- 216996
where iter = 25 -- 25
order by 1 
OPTION(maxrecursion 0 )


 


---- Q2 -- TBD 

-- same question, but need to iteration 75 times. 
-- above approach no longer works for 75 times, it will be too many rows.

-- have a dp table, to store the (stone_number, step, cnt) 
-- for each iteration, look back the previous step

-- TODO - SQL does not allow aggregation in the recursive part
-- to do the aggregation in a function, and use cross apply to get the result from the function.
-- the function needs to take in a string. with key1:count, key2:count 
-- in the function, have a script to break the k-v pair
-- break current iteration, and merge with the k-v pair
-- return the result as a string to the main caller , and go to the next iteration
go 


--stones string like - stone.count|
create function f_dp_count(@stones varchar(max))
returns table as return 
with base as
(select 
 stones = @stones + '|'
)
, cte as 
(select 
id = 1
, stone = left(stones, CHARINDEX('|', stones)-1)
, rem = right(stones, len(stones) - CHARINDEX('|', stones) )
from base

union all 

select 
id + 1 
, stone = left(rem, CHARINDEX('|', rem)-1)
, rem = right(rem, len(rem) - CHARINDEX('|', rem))
from cte
where len(rem) > 1
) 
, prev_stone_cnt as 
(
    select 
    stone = cast(PARSENAME(stone, 2) as bigint)
     , prev_cnt = cast(PARSENAME(stone, 1) as bigint)
    from cte 
)
, prev_stone_after_blink as 
(
  select 
    stone = conso.nxt_stone
    , after_blink_cnt = count(*)*prev_cnt 
  from 
  prev_stone_cnt
    outer apply (select nxt_stone = 1 where stone = 0) zero
    outer apply (select total_length = len(cast(stone as varchar(max))) ) tl
    outer apply (select nxt_stone = cast( left(stone, total_length / 2 ) as bigint)  
                 where total_length % 2 = 0  -- first part
                    union all 
                select nxt_stone = right(stone, total_length / 2)  
                where total_length %2 = 0 -- second part 
                )  split
    outer apply (select nxt_stone = stone * 2024 where total_length %2 != 0 and stone != 0 ) others 
    cross apply (select nxt_stone = case when stone = 0 then zero.nxt_stone
                                         when tl.total_length % 2 = 0 then split.nxt_Stone
                                         else others.nxt_stone 
                                    end ) conso
    group by prev_cnt, conso.nxt_stone 
), curr_stone_cnt as 
(
    select stone, curr_cnt = sum(after_blink_cnt)  
    from prev_stone_after_blink
    group by stone
)
select 
stones = STRING_AGG( cast(stone as varchar(max)) + '.' + cast(curr_cnt as varchar(max)), '|') 
from curr_stone_cnt




 
go


-- select * from #base

-- select 
--   stones = string_agg( cast(curr as varchar(max))+'.1', '|') within group ( order by curr)
--    from #base


-- select * from f_dp_count('1.1|4048.2|8096.1')


drop table if exists #iteration

; with cte as 
(
    select 
    step = 0
    , stones = string_agg( cast(curr as varchar(max))+'.1', '|') within group ( order by curr)
    from #base
    union all 
    select 
    step+ 1
    , stones = dp.stones
    from cte cross apply f_dp_count(stones) dp
    where step < 75
)
select *
into #iteration 
from cte
option (maxrecursion 0)


-- select * from #iteration

-- 

-- 257335372288947

; with base as 
(
    select stones= stones + '|' from #iteration
    where step = 75
)
, cte as 
(
select 
id = 1
, stone = left(stones, CHARINDEX('|', stones)-1)
, rem = right(stones, len(stones) - CHARINDEX('|', stones) )
from  base  

union all 

select 
id + 1 
, stone = left(rem, CHARINDEX('|', rem)-1)
, rem = right(rem, len(rem) - CHARINDEX('|', rem))
from cte
where len(rem) > 1
)
select res = sum(cast ( PARSENAME(stone, 1) as bigint )) from cte 
option (maxrecursion 0)



------ Below code does not work ------------








-- drop table if exists #stones

-- select 
-- id   
-- , stone = cast(curr as varchar(max)) 
-- into #stones
-- from #base



-- ; with cte as
-- (
-- select
-- iter = 0
-- , stone  
-- , dp = cast( concat('(', stone, ',', 0, '):1|' ) as varchar(max))
--  from #stones
-- union all 

-- select 
-- iter + 1
-- , stone = cast(conso.nxtstone as varchar(max))
-- , dp = cast (nxt_dp.dp as varchar(max)) -- cast(acc.cnt as varchar(max)) -- cast (nxt_dp.dp as varchar(max))
-- from cte 
--     outer apply (select nxtstone = 1 where stone = 0 ) zero 
--     outer apply (select nxtstone = left(stone, len(stone)/2) where len(stone) % 2 = 0
--                     union all 
--                  select nxtstone = right(stone, len(stone)/2) where len(stone) % 2 = 0
--                 ) even
--     outer apply (select nxtstone = cast(stone as bigint) * 2024 where stone != 0 and len(stone)%2!=0) other
--     cross apply (
--                 select nxtstone = case when stone = 0 then zero.nxtstone
--                                     when len(stone) % 2 = 0 then even.nxtstone
--                                     when stone != 0 and len(stone) % 2 != 0 then other.nxtstone
--                                   end 
--                 ) conso
--     cross apply ( select k = concat('(', conso.nxtstone, ',', iter, '):' )
--                         , nxt_key = concat('(', conso.nxtstone, ',', iter+1, '):' ) ) dp_key
--     cross apply ( select startloc = CHARINDEX(k, dp)
--                         , endloc =  CHARINDEX('|', dp,  CHARINDEX(k,dp))
--                 ) _loc -- this is the range to be updated
--     cross apply ( select cnt = case when startloc = 0 then 1  -- first time, counting 1
--                                     else 
--                                     1 + cast( 
--                                         substring(dp    
--                                                  , CHARINDEX(':', dp, startloc) + 1 
--                                                  , CHARINDEX('|', dp, startloc) - CHARINDEX(':', dp, startloc)-1
--                                                  ) 
--                                          as bigint) -- extracing the previous count. key:value are (stone, step):count |
--                                 end ) acc
--     cross apply ( select dp = case when CHARINDEX(k, dp) = 0 then dp + nxt_key + cast(cnt as varchar(100)) +  '|' 
--                                    else left(dp,CHARINDEX(k, dp)-1)
--                                             + 
--                                         nxt_key + cast(cnt as varchar) + '|'
--                                             + 
--                                         right(dp, len(dp) - endloc  )
--                              end
--                              ) nxt_dp

-- where iter < 10
-- )
-- select * from cte
-- order by 1 











-- ;with cte as 
-- (
--     select 
--         step = 0 
--         , stone = curr
--         , cnt = 1 
--     from #base
    
--     union all 
--     select 
--     step + 1
--     , stone = case when stone = 0 then opt1.nxt_stone
--                    when ln.total_length % 2 = 0 then opt2.nxt_stone
--                    else opt3.nxt_stone
--               end 
--     , cnt 
--     from  cte 
--     outer apply (select nxt_stone = 1 where stone = 0) opt1 
--     outer apply (select str_stone = cast(stone as varchar(max))) str_stone
--     outer apply (select total_length = len(str_stone) ) ln
--     outer apply (select nxt_stone = cast ( left(str_stone, total_length/2) as bigint) where total_length % 2 = 0 
--                  union all
--                  select nxt_stone = cast (right(str_stone, total_length/2)as bigint) where total_length % 2 = 0  
--                 ) opt2  

--     outer apply (select nxt_stone = stone * 1024 where stone != 0 and len(str_stone) % 2 != 0) opt3

--     where step < 5
-- )
-- select * from cte
-- OPTION(maxrecursion 0)


;


-- with base as
-- (select 
--  stones = '17.1|125.1' + '|'
-- )
-- , cte as 
-- (select 
-- id = 1
-- , stone = left(stones, CHARINDEX('|', stones)-1)
-- , rem = right(stones, len(stones) - CHARINDEX('|', stones) )
-- from base

-- union all 

-- select 
-- id + 1 
-- , stone = left(rem, CHARINDEX('|', rem)-1)
-- , rem = right(rem, len(rem) - CHARINDEX('|', rem))
-- from cte
-- where len(rem) > 1
-- ) select * from cte 