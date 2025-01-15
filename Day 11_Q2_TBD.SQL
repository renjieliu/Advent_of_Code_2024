drop table if exists #input

-- select col = '125 17' into #input
-- select col = '0 7 198844 5687836 58 2478 25475 894' into #input
select col = '0' into #input


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
where iter < 25
)
select res = count(*) from cte 
where iter = 25
order by 1 
OPTION(maxrecursion 0 )



---- Q2 -- TBD 

-- same question, but need to iteration 75 times. 
-- above approach no longer works for 75 times, it will be too many rows.

-- have a dp table, to store the (stone_number, step, cnt) 
-- for each iteration, look back the previous step

-- TODO - SQL does not allow aggregation in the recursive part
-- get the total count of the previous, 
-- group by stone_number, step-1


-- select * from #base 


;with cte as 
(
    select 
        step = 0 
        , stone = curr
        , cnt = 1 
    from #base
    
    union all 
    select 
    step + 1
    , stone = case when stone = 0 then opt1.nxt_stone
                   when ln.total_length % 2 = 0 then opt2.nxt_stone
                   else opt3.nxt_stone
              end 
    , cnt 
    from  cte 
    outer apply (select nxt_stone = 1 where stone = 0) opt1 
    outer apply (select str_stone = cast(stone as varchar(max))) str_stone
    outer apply (select total_length = len(str_stone) ) ln
    outer apply (select nxt_stone = cast ( left(str_stone, total_length/2) as bigint) where total_length % 2 = 0 
                 union all
                 select nxt_stone = cast (right(str_stone, total_length/2)as bigint) where total_length % 2 = 0  
                ) opt2  

    outer apply (select nxt_stone = stone * 1024 where stone != 0 and len(str_stone) % 2 != 0) opt3

    where step < 5
)
select * from cte
OPTION(maxrecursion 0)


