drop table if exists #input

-- select id = '1' , col = '..90..9' into #input  union all select id = '2' , col = '...1.98' union all select id = '3' , col = '...2..7' union all select id = '4' , col = '6543456' union all select id = '5' , col = '765.987' union all select id = '6' , col = '876....' union all select id = '7' , col = '987....' 

-- select id = '1' , col = '012345' into #input union all select id = '2' , col = '123456' union all select id = '3' , col = '234567' union all select id = '4' , col = '345678' union all select id = '5' , col = '4.6789' union all select id = '6' , col = '56789.' 

-- select id = '1' , col = '89010123' into #input union all select id = '2' , col = '78121874' union all select id = '3' , col = '87430965' union all select id = '4' , col = '96549874' union all select id = '5' , col = '45678903' union all select id = '6' , col = '32019012' union all select id = '7' , col = '01329801' union all select id = '8' , col = '10456732' 

select id = '1' , col = '18776569014346783430321009012345676543089876765012101843210' into #input union all select id = '2' , col = '09683458723454894321234218987432189452176769854323678956521' union all select id = '3' , col = '14592987654098765436549367016543032360145678765014545697434' union all select id = '4' , col = '23601678432132650145678456323456501278234549343478034788910' union all select id = '5' , col = '10712569549241043278901285434787654329103234256589121078923' union all select id = '6' , col = '89803434678950012789854398103490769210567145187678438967434' union all select id = '7' , col = '67810326589867821016760187312521898123498076094501567456556' union all select id = '8' , col = '50981810410778932345123272210634567087654189143215678304567' union all select id = '9' , col = '41832900325696543451074561028701256198563778012324569213498' union all select id = '10' , col = '32963871234587123898785654139987341017652890123473478012323' union all select id = '11' , col = '87874562187671034567698763245676892456701287634982101701414' union all select id = '12' , col = '96565653094544343452188898743786743326898096545679876894505' union all select id = '13' , col = '05454512123349852143089889652898653217652125621043965787676' union all select id = '14' , col = '12343103098256765001234767601701062108943034432152014690189' union all select id = '15' , col = '01289544567187678114345678015612341007765403569061023543287' union all select id = '16' , col = '01276632101096789823210599126543652210812312678278710871296' union all select id = '17' , col = '10345789780125679814676587439874743321907654589189658960345' union all select id = '18' , col = '01234695690434578705689436510165894430418523971012347454434' union all select id = '19' , col = '12304504541128963210790325565256766569349010810143232323521' union all select id = '20' , col = '23413213232037654309821019874305412678256186743256101210650' union all select id = '21' , col = '34329832198747012313412301878912301569107898653087082198761' union all select id = '22' , col = '65896701007658965412301498965887432354518947894198898017321' union all select id = '23' , col = '96785432216234878905432567054896345823101456763234745654450' union all select id = '24' , col = '87123870125165687876541230123445458910112398654125656723765' union all select id = '25' , col = '21012965634018796982650345678032567421012567432098749810894' union all select id = '26' , col = '76321034676569805401721214789121076578323456501589038902923' union all select id = '27' , col = '85432123589458012392895603210434789489210167895610121451012' union all select id = '28' , col = '96524323428301123483486578765965672374331321234785430543212' union all select id = '29' , col = '87012410210216782174987439834874301065145490121096789678101' union all select id = '30' , col = '73453891346785493065234328703893216521036787654567645679201' union all select id = '31' , col = '02567765445698304160145012012743227434321098943658938983210' union all select id = '32' , col = '11098894332103215659876430125652108965670101812340127654321' union all select id = '33' , col = '25437743210114106765454309836543345696987872701235672105898' union all select id = '34' , col = '36727654012325699877869218747434210780745963890104383236785' union all select id = '35' , col = '49818123963445788566978745658923312321894854761201294345656' union all select id = '36' , col = '56709037874236567345432036547012103456783203454398761787654' union all select id = '37' , col = '43237654365187665432301127015432176501654112341432650198323' union all select id = '38' , col = '54108910210094572301432098326721085432456043210541043278910' union all select id = '39' , col = '45678921109001481676501287445856794101387456101650169867610' union all select id = '40' , col = '38787632278112390789043016532943893232297887232789856701521' union all select id = '41' , col = '29698543465243654632132105621032124540196996243456765432430' union all select id = '42' , col = '10101012354305783541245094765021043256785432123455965432107' union all select id = '43' , col = '67652765410216792150956783876107650122312301098767874345698' union all select id = '44' , col = '58543894324345891067810782987238987201406784567854901236787' union all select id = '45' , col = '49987685456543282123425691096543271230545493201993210340123' union all select id = '46' , col = '32106452567650112054534567899454100045654320192387651259654' union all select id = '47' , col = '40045321898342106567651056928767652198743410887434540568798' union all select id = '48' , col = '51235430210289287438122345210178943329652378976543039875687' union all select id = '49' , col = '67896787320176396129034434356598712410701237010132128064516' union all select id = '50' , col = '10765698451965445001545423347895606549890796521243989123105' union all select id = '51' , col = '23896787567843234652436710212874307432037887430145478798234' union all select id = '52' , col = '34785896765432128763429876108963218901126986543234567017345' union all select id = '53' , col = '25634789854578019854210785654851019985435100125676454156236' union all select id = '54' , col = '18721034563689108943218798743344328776434234234981043205145' union all select id = '55' , col = '09343123872672397654309654312235899643421965547872124314076' union all select id = '56' , col = '43216012901521087898701211201156732554310876958943235023489' union all select id = '57' , col = '56905438765432076985654300321076541467215467867654332133012' union all select id = '58' , col = '47876329034310145676701098730987210398706326321038949874323' union all select id = '59' , col = '56981010123421234565892345645678901237987015432127654365434' 


--Q1 Idea
-- using recursive CTE to mimic DFS, to go find the path from 0 to 9
-- find all the 9 location, to see if the 0 location can reach that - total steps from 0 to be 10

-- Q2 Idea 
-- Get the distinct total path with turning direction

-- select * from #input

drop table if exists #base 

; with iter as 
(
    select n = 1 
    union all 
    select n+1 from iter 
    where n < (select len(col) from #input where id = 1)
)
select
r=cast(id as int)
, c = iter.n
, ch = case when SUBSTRING(col, n, 1) = '.' then -2 else cast(SUBSTRING(col, n, 1) as int) end
into #base 
from #input, iter 

-- select * from #base
-- order by 1 


drop table if exists #full_path


; with cte as 
(
     select 
     r
     ,c
     , ch 
     , zero_loc = concat(r, ',', c) 
     , total = 1 
     , direction = cast('' as varchar(max))
     , curr_location = concat(r, ',', c) 
     from #base 
     where ch = 0
     
     union all 
     
     select 
     b.r
     , b.c
     , b.ch
     , c.zero_loc
     , total + 1  
     , direction = direction + case when b.c - c.c = 1 then 'R'
                                    when c.c - b.c = 1 then 'L'
                                    when b.r - c.r = 1 then 'D'
                                    when c.r - b.r = 1 then 'U'
                               end  
     , curr_location = concat(b.r, ',', b.c)                       
    from cte c inner join #base b
     on b.ch = c.ch + 1 
     and 
        ( (abs(b.r - c.r) = 1 and b.c = c.c)
            or 
          (abs(b.c - c.c) = 1 and b.r = c.r)
          )
)
select distinct zero_loc, nine_loc = curr_location, total, direction 
into #full_path
from cte
inner join 
(select rc = concat(r, ',', c) from #base where ch = 0) zero
on cte.zero_loc = zero.rc
inner join 
(select rc = concat(r, ',', c) from #base where ch = 9) nine
on cte.curr_location = nine.rc
where total = 10
option (maxrecursion 0)



select res = count(*) 
from 
( select distinct zero_loc , nine_loc  from #full_path) _

select res = count(*) from #full_path




