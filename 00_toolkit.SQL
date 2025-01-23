-- preparation script

-- functions 

-- generate_series, creating my version, as it's not available before SQL 2022
-- string_split_RL -- adding ordinal parameters, as it's not available before SQL 2022
-- commit 

create or alter function generate_series_RL(@start int, @end int, @step int = 1) 
returns table
as return 
with cte as 
(select n = @start
union all 
select n+@step from cte 
where n < @end and n+@step <= @end
)
select [value] = n from cte 
 

go -- select * from generate_series(1, 10, 1)
 

create or alter FUNCTION string_split_RL(@txt varchar(max), @delimiter varchar(max), @ordinal int = 1)
returns table 
as return
with base as 
(select txt = @txt + @delimiter, _ = @ordinal)  -- to make the final split easier
, cte as 
(
    select 
    ordinal = 1 
    , [value] = left(txt , CHARINDEX(@delimiter, txt) -1)
    , rem = right(txt , DATALENGTH(txt) - CHARINDEX(@delimiter, txt))
    from base
    union all 
    select
    ordinal + 1 
    , [value] = left(rem , CHARINDEX(@delimiter, rem) -1)
    , rem = right(rem , DATALENGTH(rem) - CHARINDEX(@delimiter, rem))
    from cte
    where DATALENGTH(rem) > DATALENGTH(@delimiter)
    )
select 
ordinal
, [value]
from cte 

go


-- select * from generate_series_RL(1, 10, 1)
-- select * from string_split_RL('ac, sa,d,w' , ',' , 1)


--commit