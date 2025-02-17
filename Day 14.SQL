-- Running for 1 min on L14 

drop table if exists #input

-- select col = 'p=2,4 v=2,-3' into #input  union all select col = 'p=0,4 v=3,-3'  union all select col = 'p=6,3 v=-1,-3' union all select col = 'p=10,3 v=-1,2' union all select col = 'p=2,0 v=2,-1' union all select col = 'p=0,0 v=1,3' union all select col = 'p=3,0 v=-2,-2' union all select col = 'p=7,6 v=-1,-3' union all select col = 'p=3,0 v=-1,-2' union all select col = 'p=9,3 v=2,3' union all select col = 'p=7,3 v=-1,2' union all  select col = 'p=9,5 v=-3,-3' 

select col = 'p=9,89 v=-73,-15' into #input union all select col = 'p=0,11 v=-26,-93' union all select col = 'p=42,38 v=30,1' union all select col = 'p=53,4 v=49,38' union all select col = 'p=42,83 v=63,-60' union all select col = 'p=42,62 v=70,-3' union all select col = 'p=67,18 v=21,-58' union all select col = 'p=10,89 v=19,94' union all select col = 'p=59,101 v=-77,67' union all select col = 'p=0,19 v=54,-73' union all select col = 'p=76,75 v=-10,96' union all select col = 'p=7,29 v=-95,-25' union all select col = 'p=69,65 v=-70,-5' union all select col = 'p=40,81 v=41,-67' union all select col = 'p=40,81 v=-20,-37' union all select col = 'p=79,28 v=-48,-65' union all select col = 'p=50,31 v=7,-45' union all select col = 'p=68,93 v=-4,91' union all select col = 'p=96,30 v=12,31' union all select col = 'p=73,40 v=79,-62' union all select col = 'p=6,57 v=61,-1' union all select col = 'p=21,85 v=40,-11' union all select col = 'p=52,15 v=25,8' union all select col = 'p=42,53 v=-76,-51' union all select col = 'p=98,30 v=6,-45' union all select col = 'p=60,95 v=59,16' union all select col = 'p=52,48 v=-84,-76' union all select col = 'p=64,64 v=66,63' union all select col = 'p=79,13 v=55,61' union all select col = 'p=33,85 v=-49,-96' union all select col = 'p=12,34 v=-96,33' union all select col = 'p=80,62 v=-8,-58' union all select col = 'p=29,0 v=-32,79' union all select col = 'p=80,39 v=60,57' union all select col = 'p=83,41 v=28,20' union all select col = 'p=49,79 v=63,23' union all select col = 'p=75,46 v=-1,-48' union all select col = 'p=61,35 v=-55,66' union all select col = 'p=60,84 v=-7,-8' union all select col = 'p=24,81 v=-27,-29' union all select col = 'p=22,47 v=-34,-80' union all select col = 'p=21,47 v=32,-49' union all select col = 'p=44,95 v=77,64' union all select col = 'p=59,84 v=21,99' union all select col = 'p=32,22 v=-20,83' union all select col = 'p=32,78 v=18,72' union all select col = 'p=81,70 v=27,46' union all select col = 'p=23,91 v=-44,-8' union all select col = 'p=33,83 v=81,-32' union all select col = 'p=72,44 v=-62,63' union all select col = 'p=6,2 v=66,-3' union all select col = 'p=95,53 v=30,50' union all select col = 'p=15,87 v=-51,-87' union all select col = 'p=79,88 v=20,-34' union all select col = 'p=11,86 v=-89,15' union all select col = 'p=10,53 v=8,79' union all select col = 'p=83,81 v=-99,-85' union all select col = 'p=60,75 v=-95,-5' union all select col = 'p=32,66 v=-41,-82' union all select col = 'p=7,34 v=-48,26' union all select col = 'p=62,79 v=-84,-82' union all select col = 'p=32,33 v=72,87' union all select col = 'p=54,96 v=-94,-15' union all select col = 'p=43,98 v=-52,-62' union all select col = 'p=34,64 v=-65,-62' union all select col = 'p=61,51 v=55,-73' union all select col = 'p=26,64 v=-20,-2' union all select col = 'p=85,16 v=92,-17' union all select col = 'p=55,6 v=-98,-36' union all select col = 'p=35,18 v=53,-96' union all select col = 'p=84,31 v=-81,89' union all select col = 'p=5,84 v=-89,-4' union all select col = 'p=85,42 v=-94,-47' union all select col = 'p=78,16 v=38,-90' union all select col = 'p=38,59 v=-76,52' union all select col = 'p=5,37 v=-61,-97' union all select col = 'p=96,15 v=89,-17' union all select col = 'p=71,65 v=17,99' union all select col = 'p=89,58 v=-29,54' union all select col = 'p=19,87 v=50,16' union all select col = 'p=10,20 v=-68,-70' union all select col = 'p=16,57 v=-65,25' union all select col = 'p=35,9 v=-37,-46' union all select col = 'p=82,10 v=86,36' union all select col = 'p=45,41 v=-69,-86' union all select col = 'p=5,21 v=-3,-87' union all select col = 'p=35,11 v=88,32' union all select col = 'p=39,94 v=-61,92' union all select col = 'p=81,88 v=24,19' union all select col = 'p=33,10 v=-48,15' union all select col = 'p=14,42 v=71,-77' union all select col = 'p=33,99 v=67,-85' union all select col = 'p=67,77 v=52,-7' union all select col = 'p=9,61 v=-61,48' union all select col = 'p=57,68 v=52,74' union all select col = 'p=89,58 v=-29,-77' union all select col = 'p=54,5 v=-75,78' union all select col = 'p=25,94 v=74,94' union all select col = 'p=30,65 v=-86,-54' union all select col = 'p=47,45 v=46,16' union all select col = 'p=98,19 v=-35,-37' union all select col = 'p=97,71 v=-92,46' union all select col = 'p=64,40 v=57,-21' union all select col = 'p=100,32 v=-51,-73' union all select col = 'p=80,91 v=87,-42' union all select col = 'p=86,82 v=90,-9' union all select col = 'p=56,11 v=94,87' union all select col = 'p=31,66 v=74,-54' union all select col = 'p=52,70 v=-84,-1' union all select col = 'p=87,85 v=-18,-85' union all select col = 'p=6,102 v=-40,14' union all select col = 'p=15,2 v=-37,60' union all select col = 'p=39,90 v=-97,67' union all select col = 'p=26,74 v=-34,97' union all select col = 'p=33,79 v=74,-84' union all select col = 'p=71,27 v=83,58' union all select col = 'p=83,31 v=-32,33' union all select col = 'p=98,15 v=9,88' union all select col = 'p=27,44 v=36,38' union all select col = 'p=86,96 v=90,-15' union all select col = 'p=80,67 v=87,-27' union all select col = 'p=73,99 v=48,-11' union all select col = 'p=12,82 v=95,-87' union all select col = 'p=54,79 v=-73,21' union all select col = 'p=100,55 v=-33,29' union all select col = 'p=18,4 v=12,-12' union all select col = 'p=72,33 v=79,53' union all select col = 'p=42,81 v=-16,-99' union all select col = 'p=26,91 v=29,20' union all select col = 'p=75,26 v=55,58' union all select col = 'p=17,86 v=78,45' union all select col = 'p=27,54 v=-41,78' union all select col = 'p=25,87 v=50,70' union all select col = 'p=35,73 v=-66,97' union all select col = 'p=100,40 v=-79,-55' union all select col = 'p=38,82 v=-76,-32' union all select col = 'p=16,69 v=78,20' union all select col = 'p=85,34 v=13,83' union all select col = 'p=22,60 v=6,34' union all select col = 'p=38,11 v=32,63' union all select col = 'p=42,93 v=4,-12' union all select col = 'p=9,71 v=5,-55' union all select col = 'p=100,3 v=-83,-83' union all select col = 'p=68,102 v=48,-55' union all select col = 'p=19,75 v=46,-7' union all select col = 'p=23,49 v=-79,57' union all select col = 'p=51,90 v=63,-59' union all select col = 'p=32,67 v=-33,3' union all select col = 'p=40,86 v=91,-51' union all select col = 'p=32,98 v=-27,-11' union all select col = 'p=48,60 v=27,-12' union all select col = 'p=34,80 v=67,72' union all select col = 'p=87,48 v=58,-78' union all select col = 'p=73,76 v=-43,-98' union all select col = 'p=18,69 v=-97,-41' union all select col = 'p=5,30 v=40,3' union all select col = 'p=81,82 v=-88,-35' union all select col = 'p=75,82 v=-26,37' union all select col = 'p=92,40 v=-31,-72' union all select col = 'p=6,28 v=-75,-71' union all select col = 'p=14,54 v=-75,-8' union all select col = 'p=65,72 v=71,-90' union all select col = 'p=51,27 v=-80,34' union all select col = 'p=21,93 v=78,43' union all select col = 'p=19,20 v=54,8' union all select col = 'p=78,53 v=-56,48' union all select col = 'p=20,49 v=48,93' union all select col = 'p=12,6 v=-75,-44' union all select col = 'p=34,30 v=81,53' union all select col = 'p=54,22 v=63,-42' union all select col = 'p=84,35 v=8,68' union all select col = 'p=37,32 v=53,-96' union all select col = 'p=97,14 v=79,49' union all select col = 'p=78,51 v=79,30' union all select col = 'p=1,90 v=-68,-8' union all select col = 'p=54,19 v=56,87' union all select col = 'p=26,57 v=88,78' union all select col = 'p=56,75 v=-7,-6' union all select col = 'p=79,77 v=-71,-81' union all select col = 'p=82,81 v=27,-37' union all select col = 'p=68,30 v=-21,-42' union all select col = 'p=42,8 v=-38,13' union all select col = 'p=1,34 v=-10,77' union all select col = 'p=21,70 v=-52,67' union all select col = 'p=77,37 v=-8,-46' union all select col = 'p=57,65 v=73,-81' union all select col = 'p=33,77 v=-33,95' union all select col = 'p=33,28 v=-34,-19' union all select col = 'p=74,21 v=-53,-96' union all select col = 'p=56,102 v=-66,-68' union all select col = 'p=12,52 v=96,-4' union all select col = 'p=96,92 v=2,-9' union all select col = 'p=27,31 v=1,33' union all select col = 'p=81,56 v=-77,-27' union all select col = 'p=3,27 v=76,-3' union all select col = 'p=99,97 v=44,68' union all select col = 'p=73,7 v=80,66' union all select col = 'p=25,65 v=-97,23' union all select col = 'p=33,85 v=51,28' union all select col = 'p=8,99 v=-75,15' union all select col = 'p=16,74 v=40,42' union all select col = 'p=30,80 v=67,-3' union all select col = 'p=88,38 v=-25,59' union all select col = 'p=21,20 v=-58,8' union all select col = 'p=45,33 v=-31,-17' union all select col = 'p=34,37 v=25,-23' union all select col = 'p=37,99 v=-76,38' union all select col = 'p=77,65 v=13,-4' union all select col = 'p=98,16 v=-77,45' union all select col = 'p=24,61 v=11,-52' union all select col = 'p=86,101 v=-1,-39' union all select col = 'p=50,43 v=70,29' union all select col = 'p=41,10 v=84,-92' union all select col = 'p=31,61 v=88,-32' union all select col = 'p=42,50 v=42,2' union all select col = 'p=31,43 v=24,-57' union all select col = 'p=90,61 v=42,-88' union all select col = 'p=64,83 v=-21,70' union all select col = 'p=42,57 v=51,43' union all select col = 'p=12,1 v=78,86' union all select col = 'p=62,56 v=59,76' union all select col = 'p=46,79 v=-91,-66' union all select col = 'p=97,19 v=2,86' union all select col = 'p=88,25 v=86,34' union all select col = 'p=83,89 v=-94,60' union all select col = 'p=71,2 v=36,-60' union all select col = 'p=99,19 v=-49,96' union all select col = 'p=29,92 v=67,97' union all select col = 'p=72,99 v=-75,-76' union all select col = 'p=98,22 v=90,-83' union all select col = 'p=52,80 v=-28,-83' union all select col = 'p=43,11 v=-21,-43' union all select col = 'p=80,52 v=-46,27' union all select col = 'p=6,96 v=68,-63' union all select col = 'p=67,50 v=-69,-69' union all select col = 'p=53,20 v=-33,-8' union all select col = 'p=21,12 v=40,-69' union all select col = 'p=43,21 v=87,81' union all select col = 'p=22,96 v=-55,-15' union all select col = 'p=44,27 v=91,-37' union all select col = 'p=34,23 v=74,32' union all select col = 'p=49,35 v=74,-20' union all select col = 'p=9,42 v=3,89' union all select col = 'p=36,26 v=-10,84' union all select col = 'p=52,37 v=-45,81' union all select col = 'p=48,16 v=63,-43' union all select col = 'p=23,25 v=-20,86' union all select col = 'p=27,85 v=-97,-30' union all select col = 'p=37,40 v=-58,23' union all select col = 'p=33,44 v=-65,6' union all select col = 'p=35,16 v=3,-12' union all select col = 'p=57,77 v=45,72' union all select col = 'p=39,46 v=32,-52' union all select col = 'p=68,33 v=-14,-17' union all select col = 'p=42,39 v=36,-6' union all select col = 'p=56,100 v=98,-67' union all select col = 'p=10,11 v=-9,36' union all select col = 'p=20,78 v=-50,-61' union all select col = 'p=18,88 v=61,71' union all select col = 'p=64,35 v=7,95' union all select col = 'p=90,69 v=-50,-53' union all select col = 'p=20,88 v=50,-17' union all select col = 'p=84,58 v=-53,83' union all select col = 'p=75,82 v=55,-79' union all select col = 'p=61,27 v=-59,63' union all select col = 'p=26,56 v=-27,-78' union all select col = 'p=98,13 v=-68,-20' union all select col = 'p=7,101 v=26,15' union all select col = 'p=26,5 v=-93,-63' union all select col = 'p=32,30 v=-79,61' union all select col = 'p=83,56 v=41,-51' union all select col = 'p=71,62 v=27,25' union all select col = 'p=5,61 v=51,13' union all select col = 'p=95,4 v=86,-77' union all select col = 'p=65,61 v=-26,-92' union all select col = 'p=32,54 v=-41,27' union all select col = 'p=72,102 v=-86,30' union all select col = 'p=87,75 v=-81,-57' union all select col = 'p=31,32 v=-55,81' union all select col = 'p=99,51 v=-1,-50' union all select col = 'p=5,23 v=4,77' union all select col = 'p=7,52 v=96,-11' union all select col = 'p=5,30 v=84,-36' union all select col = 'p=56,0 v=35,64' union all select col = 'p=53,78 v=-14,-58' union all select col = 'p=73,56 v=72,85' union all select col = 'p=24,38 v=40,89' union all select col = 'p=88,2 v=13,68' union all select col = 'p=30,68 v=-83,49' union all select col = 'p=13,95 v=-16,90' union all select col = 'p=48,27 v=34,89' union all select col = 'p=77,80 v=55,-9' union all select col = 'p=69,28 v=-39,85' union all select col = 'p=19,52 v=-51,-80' union all select col = 'p=10,28 v=-18,-88' union all select col = 'p=85,32 v=80,32' union all select col = 'p=55,86 v=11,10' union all select col = 'p=64,34 v=52,-22' union all select col = 'p=88,72 v=68,-4' union all select col = 'p=87,22 v=58,-68' union all select col = 'p=58,67 v=26,11' union all select col = 'p=85,45 v=76,-28' union all select col = 'p=39,64 v=-3,-29' union all select col = 'p=22,97 v=-9,-41' union all select col = 'p=5,60 v=40,-55' union all select col = 'p=61,1 v=-14,-37' union all select col = 'p=10,14 v=-2,-43' union all select col = 'p=50,0 v=-87,40' union all select col = 'p=97,8 v=-47,89' union all select col = 'p=61,94 v=-70,-61' union all select col = 'p=98,66 v=-47,23' union all select col = 'p=81,66 v=-85,-52' union all select col = 'p=76,47 v=-39,52' union all select col = 'p=2,58 v=-67,-45' union all select col = 'p=8,22 v=40,-46' union all select col = 'p=87,65 v=-66,-14' union all select col = 'p=4,6 v=34,-92' union all select col = 'p=98,26 v=-19,84' union all select col = 'p=45,4 v=77,61' union all select col = 'p=86,29 v=38,45' union all select col = 'p=27,15 v=57,11' union all select col = 'p=20,6 v=-76,20' union all select col = 'p=95,21 v=37,-46' union all select col = 'p=76,90 v=51,-86' union all select col = 'p=13,15 v=88,-39' union all select col = 'p=48,101 v=77,-89' union all select col = 'p=26,59 v=-86,-78' union all select col = 'p=76,3 v=-53,-19' union all select col = 'p=53,66 v=38,52' union all select col = 'p=27,31 v=36,33' union all select col = 'p=8,48 v=-79,-2' union all select col = 'p=2,20 v=-26,60' union all select col = 'p=77,32 v=-67,84' union all select col = 'p=25,85 v=8,69' union all select col = 'p=30,3 v=74,92' union all select col = 'p=18,5 v=-86,-66' union all select col = 'p=78,57 v=-56,-75' union all select col = 'p=12,28 v=-71,52' union all select col = 'p=48,60 v=14,-79' union all select col = 'p=81,71 v=-81,96' union all select col = 'p=64,90 v=-21,-60' union all select col = 'p=83,89 v=-39,-39' union all select col = 'p=15,56 v=71,-26' union all select col = 'p=76,39 v=65,25' union all select col = 'p=70,41 v=15,-28' union all select col = 'p=72,40 v=74,-85' union all select col = 'p=30,16 v=-48,61' union all select col = 'p=30,16 v=-62,-94' union all select col = 'p=97,18 v=-5,10' union all select col = 'p=31,25 v=71,-16' union all select col = 'p=98,46 v=-95,55' union all select col = 'p=34,79 v=46,72' union all select col = 'p=21,29 v=45,78' union all select col = 'p=75,15 v=13,31' union all select col = 'p=2,94 v=68,-10' union all select col = 'p=71,44 v=-63,-36' union all select col = 'p=82,66 v=-95,21' union all select col = 'p=38,75 v=47,9' union all select col = 'p=39,64 v=49,68' union all select col = 'p=31,92 v=71,-62' union all select col = 'p=3,15 v=61,-93' union all select col = 'p=12,98 v=95,55' union all select col = 'p=7,48 v=37,82' union all select col = 'p=42,80 v=81,-51' union all select col = 'p=10,17 v=12,10' union all select col = 'p=72,83 v=76,45' union all select col = 'p=73,70 v=80,-7' union all select col = 'p=13,49 v=-45,-34' union all select col = 'p=31,67 v=39,-29' union all select col = 'p=41,69 v=-95,45' union all select col = 'p=43,98 v=38,-96' union all select col = 'p=14,11 v=-12,-68' union all select col = 'p=1,18 v=9,-39' union all select col = 'p=30,53 v=1,-25' union all select col = 'p=79,17 v=-41,-88' union all select col = 'p=48,5 v=7,-18' union all select col = 'p=72,87 v=31,96' union all select col = 'p=56,34 v=-40,2' union all select col = 'p=21,11 v=8,60' union all select col = 'p=33,99 v=77,10' union all select col = 'p=7,20 v=-72,-42' union all select col = 'p=14,43 v=14,-5' union all select col = 'p=4,46 v=50,-1' union all select col = 'p=41,66 v=39,75' union all select col = 'p=93,100 v=37,-14' union all select col = 'p=5,57 v=-32,56' union all select col = 'p=36,42 v=-75,-99' union all select col = 'p=12,28 v=-6,-49' union all select col = 'p=68,93 v=-56,16' union all select col = 'p=92,29 v=-23,-37' union all select col = 'p=82,73 v=17,-34' union all select col = 'p=85,4 v=78,5' union all select col = 'p=4,60 v=-43,51' union all select col = 'p=6,38 v=68,29' union all select col = 'p=94,57 v=-55,-28' union all select col = 'p=22,95 v=-93,13' union all select col = 'p=66,14 v=-81,-65' union all select col = 'p=49,74 v=21,-83' union all select col = 'p=36,77 v=12,64' union all select col = 'p=2,84 v=-37,91' union all select col = 'p=49,36 v=-59,-49' union all select col = 'p=38,79 v=18,45' union all select col = 'p=77,91 v=44,66' union all select col = 'p=94,11 v=-57,10' union all select col = 'p=47,37 v=84,-47' union all select col = 'p=15,56 v=-16,98' union all select col = 'p=13,68 v=46,-74' union all select col = 'p=4,4 v=-97,-68' union all select col = 'p=27,43 v=-86,-58' union all select col = 'p=59,9 v=66,27' union all select col = 'p=18,51 v=-23,79' union all select col = 'p=20,96 v=39,-11' union all select col = 'p=23,14 v=-93,59' union all select col = 'p=36,100 v=20,-7' union all select col = 'p=65,52 v=-39,4' union all select col = 'p=23,13 v=-44,-1' union all select col = 'p=91,96 v=-57,-35' union all select col = 'p=57,10 v=66,-91' union all select col = 'p=79,4 v=62,-65' union all select col = 'p=50,45 v=7,-20' union all select col = 'p=76,81 v=-50,48' union all select col = 'p=10,14 v=-68,60' union all select col = 'p=9,45 v=-86,-26' union all select col = 'p=37,59 v=-54,38' union all select col = 'p=22,22 v=22,57' union all select col = 'p=17,102 v=43,14' union all select col = 'p=51,44 v=89,55' union all select col = 'p=39,73 v=-76,-31' union all select col = 'p=22,19 v=-79,-18' union all select col = 'p=70,85 v=-78,44' union all select col = 'p=74,102 v=-28,-89' union all select col = 'p=45,87 v=-27,15' union all select col = 'p=20,94 v=15,94' union all select col = 'p=74,79 v=24,-31' union all select col = 'p=85,25 v=-4,35' union all select col = 'p=63,35 v=38,84' union all select col = 'p=92,52 v=44,28' union all select col = 'p=75,56 v=-95,3' union all select col = 'p=75,18 v=-91,87' union all select col = 'p=48,19 v=-21,36' union all select col = 'p=68,95 v=-95,-65' union all select col = 'p=21,53 v=-61,44' union all select col = 'p=98,5 v=-20,70' union all select col = 'p=3,77 v=-36,97' union all select col = 'p=5,47 v=-58,-48' union all select col = 'p=76,61 v=-95,-79' union all select col = 'p=51,89 v=-14,-86' union all select col = 'p=68,22 v=6,58' union all select col = 'p=89,82 v=46,-25' union all select col = 'p=68,93 v=14,-64' union all select col = 'p=63,39 v=-76,6' union all select col = 'p=87,100 v=-18,13' union all select col = 'p=14,80 v=-37,-5' union all select col = 'p=45,68 v=70,76' union all select col = 'p=41,36 v=-83,55' union all select col = 'p=95,67 v=-57,-24' union all select col = 'p=45,78 v=56,18' union all select col = 'p=37,97 v=18,65' union all select col = 'p=81,49 v=82,-90' union all select col = 'p=17,62 v=85,-2' union all select col = 'p=20,93 v=-2,42' union all select col = 'p=15,54 v=-6,-48' union all select col = 'p=51,34 v=-87,-47' union all select col = 'p=98,80 v=10,-28' union all select col = 'p=32,75 v=74,-57' union all select col = 'p=38,34 v=25,-72' union all select col = 'p=27,39 v=64,-72' union all select col = 'p=52,2 v=14,-43' union all select col = 'p=9,0 v=-1,-4' union all select col = 'p=8,96 v=-85,-7' union all select col = 'p=27,74 v=-58,-5' union all select col = 'p=8,8 v=-26,89' union all select col = 'p=83,28 v=-88,-73' union all select col = 'p=19,21 v=22,61' union all select col = 'p=69,35 v=38,81' union all select col = 'p=62,65 v=17,50' union all select col = 'p=89,44 v=-50,-51' union all select col = 'p=58,19 v=-7,-93' union all select col = 'p=22,32 v=-86,-73' union all select col = 'p=60,23 v=-84,-66' union all select col = 'p=94,68 v=34,75' union all select col = 'p=82,42 v=-36,-73' union all select col = 'p=73,19 v=-21,56' union all select col = 'p=62,42 v=73,55' union all select col = 'p=60,62 v=-35,51' union all select col = 'p=54,13 v=-38,-12' union all select col = 'p=89,86 v=-1,12' union all select col = 'p=93,72 v=60,-59' union all select col = 'p=3,99 v=79,-89' union all select col = 'p=9,58 v=9,46' union all select col = 'p=72,33 v=79,1' union all select col = 'p=67,30 v=-39,59' union all select col = 'p=31,71 v=37,6' union all select col = 'p=32,84 v=-89,49' union all select col = 'p=93,18 v=82,56' union all select col = 'p=60,86 v=-77,18' union all select col = 'p=95,101 v=94,42' union all select col = 'p=35,27 v=-27,59' union all select col = 'p=49,46 v=49,1' union all select col = 'p=52,4 v=-66,-15' 

-- select * from #input

drop table if exists #base

-- Idea is to find the final location of x and y and check which quadrant it belongs to
-- no need to walk 100 times.


select 
id = ROW_NUMBER() over(order by 
                        cast(left(p_v_1.p, CHARINDEX(',', p_v_1.p)-1) as int)
                        ,  cast(right(p_v_1.p, len(p_v_1.p) - CHARINDEX(',', p_v_1.p) )as int)
                      )
, p1 = cast(left(p_v_1.p, CHARINDEX(',', p_v_1.p)-1) as int)
, p2 = cast(right(p_v_1.p, len(p_v_1.p) - CHARINDEX(',', p_v_1.p)) as int)
, v1 = cast(left(p_v_1.v, CHARINDEX(',', p_v_1.v)-1) as int)
, v2 = cast(right(p_v_1.v, len(p_v_1.v) - CHARINDEX(',', p_v_1.v)) as int)
into #base
from #input
    cross apply (select 
    p = left(col, CHARINDEX(' ', col) - 1 )
    , v = right(col, len(col) - CHARINDEX(' ', col) ) 
    ) p_v_0
    cross APPLY (select p = replace(p, 'p=', '') , v = replace(v, 'v=', '')) p_v_1

drop table if exists #after_move

select
base.*
, endLoc_x = end_x
, endLoc_y = end_y
, end_quad = case when end_x < (wide-1)/2 and end_y < (tall-1) / 2 then 1  -- robots on the quadrant line won't count
                  when end_x > (wide-1)/2 and end_y < (tall-1) / 2 then 2 
                  when end_x < (wide-1)/2 and end_y > (tall-1) / 2 then 3
                  when end_x > (wide-1)/2 and end_y > (tall-1) / 2 then 4 
             end  
into #after_move
from #base base
    cross apply (select moves = 100, wide = 101, tall = 103) _map
    cross apply (select move_x = (p1 + v1*moves), moved_y = p2 + v2*moves ) _moved_to
    cross apply (select end_x = case when v1 >= 0 or move_x > 0 
                                     then move_x % wide 
                                    else ( move_x % wide + wide ) % wide 
                                end  
                        , end_y = case when v2 >= 0 or moved_y > 0 
                                       then moved_y % tall 
                                       else (moved_y % tall + tall) % tall 
                                  end 
                ) _end


-- ln x + ln y + ln z = ln(x*y*z) 
-- exp(ln(x*y*z)) = x*y*z -- but this approach will result in decimals


 -- 228457125
; with cte as (
select end_quad,  cnt = count(*)
from #after_move
where end_quad is not null 
group by end_quad
) 
select res =(select cnt from cte where end_quad = 1)
            * 
            (select cnt from cte where end_quad = 2)
            * 
            (select cnt from cte where end_quad = 3)
            *
            (select cnt from cte where end_quad = 4)




-- Part 2 
--Idea: 
-- option 1 - Most of them will stick together,  to check how many of them can find at least one neighbour
-- option 2 - Since a lot of the points will be sticked together to form a tree, it should have the minimal safety score



drop table if exists #moves

; with moves_iter as 
(select m = 1 
union all 
select m + 1 from moves_iter 
where m < 10000
)
select
step = m
, base.*
, endLoc_x = end_x
, endLoc_y = end_y
, end_quad = case when end_x < (wide-1)/2 and end_y < (tall-1) / 2 then 1  -- robots on the quadrant line won't count
                  when end_x > (wide-1)/2 and end_y < (tall-1) / 2 then 2 
                  when end_x < (wide-1)/2 and end_y > (tall-1) / 2 then 3
                  when end_x > (wide-1)/2 and end_y > (tall-1) / 2 then 4 
             end  
into #moves
from #base base cross join moves_iter
    cross apply (select moves = m, wide = 101, tall = 103) _map
    cross apply (select moved_x = (p1 + v1*moves), moved_y = p2 + v2*moves ) _moved_to
    cross apply (select end_x = case when v1 >= 0 or moved_x > 0 
                                     then moved_x % wide 
                                    else ( moved_x % wide + wide ) % wide 
                                end  
                        , end_y = case when v2 >= 0 or moved_y > 0 
                                       then moved_y % tall 
                                       else (moved_y % tall + tall) % tall 
                                  end 
                ) _end
OPTION (maxrecursion 0)





drop table if exists #cluster 

select a.step, a.id, cnt = count(distinct b.id)
into #cluster 
from #moves a
left outer join #moves b
on a.step = b.step
and 
(   (abs(a.endLoc_x - b.endLoc_x) =1 and a.endLoc_y = b.endLoc_y)
    or 
    (abs(a.endLoc_y - b.endLoc_y) =1 and a.endLoc_x = b.endLoc_x)
)
group by a.step, a.id



-- select * from #cluster
-- 6493
select top 1 res = step from 
( select 
step
, pct_point_with_neighbour = sum(cnt)*100.0 / count(id)
from #cluster
group by step 
)_
order by pct_point_with_neighbour desc




-- option 2 

drop table if exists #moves_cnt 

select step, end_quad,  cnt = count(*)
into #moves_cnt 
from #moves
where end_quad is not null 
group by step, end_quad


create index idx on #moves_cnt(step, end_quad)
 
-- 6493
select top 1 res = step from 
(select 
step
, score = (select cnt from #moves_cnt mc2 where end_quad = 1 and mc1.step = mc2.step)
          *
          (select cnt from #moves_cnt mc2 where end_quad = 2 and mc1.step = mc2.step)
          * 
          (select cnt from #moves_cnt mc2 where end_quad = 3 and mc1.step = mc2.step)
          * 
          (select cnt from #moves_cnt mc2 where end_quad = 4 and mc1.step =mc2.step)

from #moves_cnt mc1
)_
order by score






