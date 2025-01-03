drop table if exists #input 

select col = '14 17 20 21 24 26 27 24'
into #input 
union all
select col = '39 41 43 45 46 46' union all
select col = '35 38 39 41 44 47 50 54' union all
select col = '68 69 71 74 75 78 80 87' union all
select col = '80 82 81 82 83 85 88' union all
select col = '48 51 54 55 58 57 55' union all
select col = '41 44 47 50 47 47' union all
select col = '66 68 71 70 73 77' union all
select col = '29 32 29 30 35' union all
select col = '77 78 79 81 83 83 86 88' union all
select col = '10 13 14 16 19 19 20 17' union all
select col = '61 64 65 67 67 67' union all
select col = '29 30 31 32 35 35 39' union all
select col = '24 25 25 28 31 38' union all
select col = '61 64 65 66 70 73 76' union all
select col = '35 37 39 43 40' union all
select col = '41 42 43 47 48 49 49' union all
select col = '3 5 9 11 15' union all
select col = '24 26 28 32 34 35 40' union all
select col = '48 49 50 57 59 62 64 67' union all
select col = '18 20 22 25 26 32 35 33' union all
select col = '76 79 85 86 86' union all
select col = '55 58 59 66 70' union all
select col = '9 11 13 14 20 23 29' union all
select col = '58 56 58 59 60 62 63 65' union all
select col = '42 39 40 41 42 43 46 43' union all
select col = '83 80 81 83 86 89 89' union all
select col = '48 47 48 50 52 56' union all
select col = '38 37 38 39 46' union all
select col = '54 53 56 53 55 56' union all
select col = '79 76 74 77 76' union all
select col = '68 65 63 64 67 70 70' union all
select col = '84 81 83 86 84 87 91' union all
select col = '72 71 74 72 78' union all
select col = '38 35 36 36 38 41 43 46' union all
select col = '45 43 45 47 49 49 50 48' union all
select col = '23 22 24 24 24' union all
select col = '9 6 8 10 12 12 13 17' union all
select col = '77 75 78 78 79 80 83 89' union all
select col = '60 58 62 65 66 69 71' union all
select col = '64 62 63 64 68 67' union all
select col = '76 73 76 77 81 83 83' union all
select col = '21 19 21 25 26 29 31 35' union all
select col = '53 52 53 54 58 61 63 70' union all
select col = '91 89 94 97 99' union all
select col = '15 14 17 23 24 25 22' union all
select col = '65 62 65 71 74 75 75' union all
select col = '79 76 77 83 87' union all
select col = '12 10 15 18 21 23 29' union all
select col = '63 63 64 65 67 70 72' union all
select col = '51 51 53 56 58 56' union all
select col = '85 85 86 89 91 93 93' union all
select col = '16 16 17 19 20 23 25 29' union all
select col = '64 64 67 68 71 77' union all
select col = '2 2 5 8 11 10 13' union all
select col = '38 38 37 39 41 39' union all
select col = '77 77 74 77 78 80 80' union all
select col = '16 16 18 20 23 21 25' union all
select col = '79 79 82 83 85 84 86 92' union all
select col = '86 86 88 88 91 92 93 94' union all
select col = '93 93 95 95 92' union all
select col = '14 14 14 17 18 18' union all
select col = '58 58 59 59 63' union all
select col = '82 82 84 85 85 87 94' union all
select col = '72 72 76 79 82 84' union all
select col = '89 89 93 96 95' union all
select col = '6 6 10 11 11' union all
select col = '55 55 59 62 66' union all
select col = '53 53 57 58 63' union all
select col = '28 28 35 36 39 41 43 46' union all
select col = '22 22 25 27 28 33 30' union all
select col = '1 1 2 9 9' union all
select col = '83 83 89 90 91 95' union all
select col = '12 12 19 20 26' union all
select col = '43 47 48 50 51 52' union all
select col = '52 56 57 59 61 63 65 63' union all
select col = '47 51 53 54 57 57' union all
select col = '83 87 88 89 91 92 96' union all
select col = '75 79 81 83 84 91' union all
select col = '43 47 44 46 48' union all
select col = '19 23 21 22 25 26 29 27' union all
select col = '4 8 10 7 10 12 15 15' union all
select col = '72 76 77 75 76 77 81' union all
select col = '49 53 51 54 61' union all
select col = '36 40 40 42 45 47 49' union all
select col = '64 68 69 69 66' union all
select col = '24 28 29 29 30 32 34 34' union all
select col = '77 81 82 82 85 86 90' union all
select col = '36 40 40 42 45 51' union all
select col = '13 17 18 19 22 26 27' union all
select col = '74 78 81 85 88 86' union all
select col = '81 85 86 90 92 92' union all
select col = '2 6 8 12 16' union all
select col = '68 72 74 78 85' union all
select col = '30 34 35 42 45 47' union all
select col = '87 91 96 98 99 96' union all
select col = '48 52 57 60 62 65 65' union all
select col = '20 24 25 27 34 35 39' union all
select col = '68 72 75 78 84 85 92' union all
select col = '4 9 12 14 15 18 20' union all
select col = '33 40 41 44 47 48 46' union all
select col = '30 35 36 37 40 42 45 45' union all
select col = '75 80 81 82 85 87 88 92' union all
select col = '35 40 43 45 48 54' union all
select col = '55 61 58 59 62' union all
select col = '23 30 27 28 30 27' union all
select col = '57 63 62 65 65' union all
select col = '51 56 59 56 59 63' union all
select col = '53 60 62 65 62 67' union all
select col = '14 19 19 21 24 27 28' union all
select col = '52 58 58 60 61 64 66 64' union all
select col = '61 66 67 68 71 71 73 73' union all
select col = '12 19 22 24 26 29 29 33' union all
select col = '47 53 55 58 58 64' union all
select col = '63 70 72 75 77 81 84' union all
select col = '7 14 16 20 21 18' union all
select col = '20 26 29 30 34 36 36' union all
select col = '7 13 15 17 21 25' union all
select col = '70 77 80 81 84 85 89 94' union all
select col = '13 20 26 27 29 32 33' union all
select col = '68 74 75 81 78' union all
select col = '71 76 82 84 86 86' union all
select col = '50 55 58 60 65 67 70 74' union all
select col = '9 15 17 24 25 30' union all
select col = '35 33 32 30 27 30' union all
select col = '22 20 17 14 11 8 5 5' union all
select col = '97 96 94 92 91 90 88 84' union all
select col = '23 22 21 20 18 16 14 7' union all
select col = '16 15 14 16 15' union all
select col = '35 34 31 29 26 28 29' union all
select col = '41 39 37 35 33 31 32 32' union all
select col = '88 85 83 86 82' union all
select col = '38 36 34 32 34 29' union all
select col = '12 9 9 7 5' union all
select col = '93 92 89 89 91' union all
select col = '82 81 79 76 76 75 75' union all
select col = '31 29 29 26 25 24 23 19' union all
select col = '74 72 71 71 69 67 62' union all
select col = '28 27 23 22 21 20 19 17' union all
select col = '56 53 49 47 44 41 43' union all
select col = '60 59 55 53 50 50' union all
select col = '62 60 57 55 53 50 46 42' union all
select col = '59 58 55 51 45' union all
select col = '26 23 20 13 12 10 9' union all
select col = '20 19 16 15 14 7 9' union all
select col = '19 17 16 14 11 6 5 5' union all
select col = '98 95 89 87 85 81' union all
select col = '81 80 79 73 70 64' union all
select col = '68 71 68 65 63 60 59 56' union all
select col = '72 74 72 71 68 65 64 66' union all
select col = '74 77 76 74 72 72' union all
select col = '59 60 59 57 54 50' union all
select col = '36 38 37 36 33 30 27 21' union all
select col = '69 72 69 70 67 64' union all
select col = '17 18 16 13 14 13 16' union all
select col = '14 16 19 17 15 14 14' union all
select col = '38 40 42 41 37' union all
select col = '44 46 48 46 40' union all
select col = '84 85 83 83 80 79' union all
select col = '34 36 36 33 32 31 34' union all
select col = '51 52 49 47 47 44 44' union all
select col = '83 84 81 81 79 78 74' union all
select col = '81 84 84 83 82 75' union all
select col = '94 96 95 91 90 88' union all
select col = '59 62 61 59 55 53 56' union all
select col = '20 23 20 18 14 11 11' union all
select col = '59 62 58 55 52 48' union all
select col = '27 29 28 24 17' union all
select col = '96 97 96 91 90 87' union all
select col = '10 13 7 5 3 1 4' union all
select col = '88 90 84 82 80 79 79' union all
select col = '39 41 38 31 29 25' union all
select col = '74 77 72 71 68 61' union all
select col = '40 40 37 34 32' union all
select col = '91 91 89 88 87 90' union all
select col = '90 90 89 87 87' union all
select col = '95 95 94 92 90 88 87 83' union all
select col = '60 60 59 57 52' union all
select col = '85 85 82 80 79 77 80 77' union all
select col = '52 52 49 46 45 48 49' union all
select col = '6 6 4 5 5' union all
select col = '35 35 34 35 32 31 27' union all
select col = '68 68 65 64 63 60 62 57' union all
select col = '89 89 86 84 84 81' union all
select col = '38 38 38 36 33 35' union all
select col = '9 9 8 5 2 2 2' union all
select col = '51 51 51 50 46' union all
select col = '59 59 59 57 50' union all
select col = '62 62 61 57 55 52 49' union all
select col = '71 71 70 67 66 63 59 60' union all
select col = '32 32 28 26 26' union all
select col = '64 64 62 60 56 54 53 49' union all
select col = '89 89 87 85 84 80 75' union all
select col = '76 76 74 68 65 64' union all
select col = '48 48 41 38 37 35 33 36' union all
select col = '43 43 40 38 35 33 26 26' union all
select col = '60 60 59 58 51 47' union all
select col = '65 65 60 59 57 55 54 48' union all
select col = '21 17 14 12 9' union all
select col = '27 23 21 19 20' union all
select col = '34 30 27 26 23 21 19 19' union all
select col = '28 24 23 20 18 16 13 9' union all
select col = '60 56 55 53 51 50 47 42' union all
select col = '70 66 63 60 61 58 55' union all
select col = '76 72 69 72 71 72' union all
select col = '80 76 74 75 74 73 73' union all
select col = '69 65 62 65 62 61 59 55' union all
select col = '17 13 16 15 14 9' union all
select col = '26 22 21 18 17 17 15' union all
select col = '84 80 80 77 74 77' union all
select col = '67 63 62 60 60 59 56 56' union all
select col = '31 27 27 25 22 18' union all
select col = '93 89 86 86 81' union all
select col = '76 72 71 69 68 64 63' union all
select col = '29 25 21 20 23' union all
select col = '65 61 57 54 54' union all
select col = '23 19 16 12 9 8 5 1' union all
select col = '62 58 55 53 51 47 46 40' union all
select col = '25 21 14 11 10 7' union all
select col = '30 26 21 19 20' union all
select col = '55 51 50 43 42 39 39' union all
select col = '60 56 54 52 51 50 44 40' union all
select col = '44 40 38 35 32 29 22 15' union all
select col = '70 63 62 60 57 55' union all
select col = '95 89 88 85 88' union all
select col = '43 38 37 35 35' union all
select col = '85 80 77 75 74 73 69' union all
select col = '52 45 43 41 38 37 30' union all
select col = '87 82 79 81 78' union all
select col = '38 32 29 31 30 32' union all
select col = '63 58 57 60 58 57 57' union all
select col = '56 49 51 49 45' union all
select col = '43 38 39 37 35 33 32 25' union all
select col = '28 21 21 20 17 16 15 13' union all
select col = '73 68 68 65 63 66' union all
select col = '55 48 46 46 45 45' union all
select col = '20 14 14 11 8 4' union all
select col = '23 17 17 16 10' union all
select col = '17 10 8 4 2' union all
select col = '85 80 78 75 73 72 68 70' union all
select col = '52 45 44 43 40 39 35 35' union all
select col = '87 80 78 74 72 69 66 62' union all
select col = '68 63 59 58 52' union all
select col = '29 22 17 15 14 12' union all
select col = '53 47 42 41 44' union all
select col = '99 92 89 87 80 77 75 75' union all
select col = '90 85 82 75 71' union all
select col = '84 78 76 73 71 70 65 58' union all
select col = '12 15 16 18 21 22 23 20' union all
select col = '53 56 57 60 62 63 63' union all
select col = '20 23 26 27 29 30 34' union all
select col = '27 29 32 35 38 40 43 49' union all
select col = '86 89 91 93 95 93 94' union all
select col = '54 56 57 56 59 57' union all
select col = '87 90 88 90 93 96 97 97' union all
select col = '46 47 48 47 51' union all
select col = '89 90 87 89 91 93 99' union all
select col = '18 21 24 25 27 27 30 32' union all
select col = '77 79 81 81 82 80' union all
select col = '43 45 46 48 50 50 50' union all
select col = '84 85 88 88 92' union all
select col = '62 63 63 66 71' union all
select col = '51 53 57 59 62 65' union all
select col = '12 15 18 22 24 25 24' union all
select col = '83 85 88 92 95 95' union all
select col = '3 6 8 12 16' union all
select col = '9 11 13 15 19 26' union all
select col = '80 82 85 86 91 92' union all
select col = '6 7 9 14 17 15' union all
select col = '67 68 70 73 74 81 81' union all
select col = '16 19 20 22 28 32' union all
select col = '78 80 86 89 95' union all
select col = '11 10 12 15 17 20 22' union all
select col = '26 25 27 28 30 29' union all
select col = '74 73 74 77 78 78' union all
select col = '72 71 74 75 76 80' union all
select col = '49 46 49 52 55 60' union all
select col = '53 50 52 50 52 54' union all
select col = '42 40 41 44 43 41' union all
select col = '6 5 7 8 9 11 9 9' union all
select col = '51 50 53 54 55 54 58' union all
select col = '73 72 70 72 75 78 84' union all
select col = '74 73 75 78 80 80 82' union all
select col = '95 94 95 97 97 94' union all
select col = '5 2 2 5 7 7' union all
select col = '75 74 74 75 76 80' union all
select col = '91 89 89 92 99' union all
select col = '11 9 10 14 15 18 19 21' union all
select col = '47 44 48 50 51 50' union all
select col = '42 40 42 44 45 47 51 51' union all
select col = '45 42 46 48 52' union all
select col = '57 56 60 61 63 69' union all
select col = '79 76 79 80 82 87 90' union all
select col = '23 21 22 25 32 33 35 34' union all
select col = '81 80 85 87 87' union all
select col = '33 32 35 36 39 44 47 51' union all
select col = '80 77 78 83 90' union all
select col = '2 2 5 8 11 13' union all
select col = '57 57 60 61 62 65 62' union all
select col = '56 56 57 59 61 64 65 65' union all
select col = '77 77 78 80 83 84 88' union all
select col = '5 5 7 8 11 17' union all
select col = '13 13 14 16 13 14' union all
select col = '88 88 87 88 86' union all
select col = '24 24 25 28 30 29 29' union all
select col = '43 43 40 42 46' union all
select col = '37 37 38 39 38 45' union all
select col = '87 87 88 89 91 91 93' union all
select col = '74 74 75 77 78 78 77' union all
select col = '85 85 86 87 87 90 90' union all
select col = '29 29 29 32 36' union all
select col = '72 72 72 73 74 77 82' union all
select col = '73 73 76 80 82 83 85 86' union all
select col = '3 3 4 8 10 7' union all
select col = '13 13 15 19 21 24 24' union all
select col = '62 62 64 67 71 73 77' union all
select col = '75 75 77 80 84 85 88 95' union all
select col = '8 8 11 16 18 21' union all
select col = '31 31 34 37 38 44 43' union all
select col = '53 53 54 56 59 64 65 65' union all
select col = '30 30 32 33 36 42 46' union all
select col = '6 6 9 16 21' union all
select col = '75 79 80 82 84' union all
select col = '20 24 25 26 24' union all
select col = '35 39 41 44 47 49 49' union all
select col = '46 50 52 55 56 60' union all
select col = '84 88 91 93 99' union all
select col = '60 64 66 63 64' union all
select col = '71 75 76 79 78 81 80' union all
select col = '30 34 31 32 32' union all
select col = '64 68 66 68 71 75' union all
select col = '43 47 50 51 50 51 58' union all
select col = '64 68 68 70 71' union all
select col = '54 58 58 59 62 61' union all
select col = '41 45 45 48 48' union all
select col = '9 13 14 17 17 19 23' union all
select col = '61 65 67 67 70 72 74 81' union all
select col = '2 6 7 11 13 15' union all
select col = '30 34 37 41 39' union all
select col = '68 72 76 79 82 84 84' union all
select col = '5 9 10 13 17 21' union all
select col = '65 69 70 74 80' union all
select col = '77 81 86 87 89 90 91 94' union all
select col = '59 63 66 73 72' union all
select col = '73 77 80 81 86 86' union all
select col = '18 22 23 25 30 33 37' union all
select col = '35 39 44 46 47 52' union all
select col = '16 22 23 26 29 32 35 37' union all
select col = '67 73 76 79 81 84 87 86' union all
select col = '1 8 10 12 14 14' union all
select col = '30 36 37 39 40 41 42 46' union all
select col = '36 41 43 44 47 49 54' union all
select col = '49 54 57 56 58 59 62 65' union all
select col = '48 53 56 58 60 58 60 57' union all
select col = '22 27 28 27 28 31 34 34' union all
select col = '11 16 19 20 21 18 21 25' union all
select col = '36 41 42 40 47' union all
select col = '4 10 13 13 15' union all
select col = '13 18 20 21 23 23 20' union all
select col = '51 58 61 61 62 62' union all
select col = '18 25 28 29 29 31 33 37' union all
select col = '59 65 68 71 71 73 76 81' union all
select col = '75 80 81 82 86 87' union all
select col = '11 18 21 24 25 29 32 29' union all
select col = '27 34 37 41 44 44' union all
select col = '7 12 16 17 18 22' union all
select col = '25 30 32 36 39 45' union all
select col = '74 80 87 89 92' union all
select col = '54 59 62 68 71 68' union all
select col = '2 7 9 11 13 20 20' union all
select col = '41 46 48 53 55 58 62' union all
select col = '67 74 79 81 87' union all
select col = '66 64 63 62 64' union all
select col = '51 50 48 47 45 45' union all
select col = '21 18 16 15 11' union all
select col = '30 28 26 24 23 22 17' union all
select col = '45 44 41 40 41 40 37' union all
select col = '64 61 62 61 60 57 56 59' union all
select col = '58 56 55 56 54 54' union all
select col = '11 9 12 11 7' union all
select col = '79 76 73 75 70' union all
select col = '35 33 30 28 28 26' union all
select col = '31 28 25 25 24 25' union all
select col = '56 55 54 54 53 53' union all
select col = '46 44 41 38 35 35 31' union all
select col = '88 87 87 86 80' union all
select col = '12 11 7 4 1' union all
select col = '39 38 37 35 31 33' union all
select col = '17 15 14 12 9 5 4 4' union all
select col = '21 20 17 13 10 7 5 1' union all
select col = '43 41 40 39 35 30' union all
select col = '73 70 67 66 59 57 54 52' union all
select col = '60 57 51 48 45 48' union all
select col = '22 21 19 12 11 9 9' union all
select col = '90 89 87 85 83 78 74' union all
select col = '28 26 24 18 15 12 11 6' union all
select col = '18 20 17 16 15 12 9 6' union all
select col = '80 83 80 77 76 77' union all
select col = '86 89 86 83 83' union all
select col = '47 49 46 45 41' union all
select col = '35 38 37 34 28' union all
select col = '8 9 12 11 9 6' union all
select col = '80 83 81 82 85' union all
select col = '17 18 17 14 16 15 15' union all
select col = '61 63 60 58 57 60 59 55' union all
select col = '60 62 61 63 57' union all
select col = '47 49 49 46 45 42 39 36' union all
select col = '36 38 38 36 34 33 32 34' union all
select col = '66 69 66 63 61 58 58 58' union all
select col = '78 81 81 79 77 76 72' union all
select col = '70 72 71 69 68 68 61' union all
select col = '60 63 60 59 56 52 49' union all
select col = '88 91 87 86 85 86' union all
select col = '90 92 90 88 84 82 82' union all
select col = '36 38 34 33 29' union all
select col = '45 47 43 41 38 37 36 31' union all
select col = '83 86 84 81 78 72 70 69' union all
select col = '48 49 44 41 43' union all
select col = '82 83 82 80 77 72 72' union all
select col = '93 94 92 89 86 79 75' union all
select col = '75 77 74 68 67 64 62 56' union all
select col = '57 57 54 51 48 47 46 45' union all
select col = '96 96 93 92 91 88 90' union all
select col = '35 35 32 29 26 23 20 20' union all
select col = '29 29 28 25 24 20' union all
select col = '61 61 60 58 52' union all
select col = '69 69 66 65 67 64' union all
select col = '11 11 8 10 7 4 3 5' union all
select col = '14 14 13 16 16' union all
select col = '23 23 24 22 18' union all
select col = '47 47 46 48 41' union all
select col = '12 12 12 10 9 6 4 3' union all
select col = '17 17 16 16 19' union all
select col = '25 25 25 22 19 17 16 16' union all
select col = '30 30 29 27 27 25 24 20' union all
select col = '98 98 98 97 94 87' union all
select col = '83 83 81 78 75 71 69 66' union all
select col = '48 48 44 43 46' union all
select col = '56 56 52 51 49 48 48' union all
select col = '57 57 53 51 47' union all
select col = '53 53 49 46 45 43 41 36' union all
select col = '94 94 91 86 85 83 82 81' union all
select col = '79 79 72 70 72' union all
select col = '83 83 78 76 75 72 72' union all
select col = '21 21 14 11 8 4' union all
select col = '90 90 88 85 78 71' union all
select col = '39 35 33 31 30 28 26' union all
select col = '21 17 14 13 11 13' union all
select col = '69 65 62 61 58 58' union all
select col = '67 63 61 59 57 55 51' union all
select col = '48 44 43 41 39 34' union all
select col = '95 91 90 91 89 88 87' union all
select col = '33 29 26 23 25 22 24' union all
select col = '88 84 87 85 84 83 81 81' union all
select col = '27 23 26 25 22 18' union all
select col = '91 87 86 83 84 81 76' union all
select col = '60 56 54 51 49 49 48 46' union all
select col = '81 77 77 74 77' union all
select col = '92 88 88 87 87' union all
select col = '91 87 85 84 82 82 80 76' union all
select col = '43 39 38 38 36 34 32 26' union all
select col = '45 41 37 36 35 32' union all
select col = '65 61 60 59 57 53 51 54' union all
select col = '99 95 91 90 88 85 85' union all
select col = '53 49 46 42 38' union all
select col = '68 64 62 61 57 56 54 47' union all
select col = '56 52 50 47 40 39' union all
select col = '30 26 24 22 16 13 15' union all
select col = '37 33 31 25 23 20 20' union all
select col = '72 68 62 61 60 56' union all
select col = '46 42 39 34 28' union all
select col = '55 48 46 43 42 39 36' union all
select col = '34 27 26 24 22 21 20 21' union all
select col = '24 18 16 14 13 12 12' union all
select col = '72 65 63 61 59 55' union all
select col = '53 48 47 44 42 37' union all
select col = '51 46 44 42 39 42 40 38' union all
select col = '27 21 18 16 17 18' union all
select col = '95 90 88 89 89' union all
select col = '89 83 82 80 77 80 77 73' union all
select col = '75 68 70 69 66 61' union all
select col = '45 39 36 36 35' union all
select col = '44 39 37 35 35 37' union all
select col = '35 30 29 28 28 28' union all
select col = '46 40 37 36 34 33 33 29' union all
select col = '52 45 42 41 40 40 34' union all
select col = '85 80 79 78 74 73 71 69' union all
select col = '38 33 32 28 26 29' union all
select col = '78 73 72 69 65 65' union all
select col = '26 19 17 16 12 8' union all
select col = '24 18 14 13 6' union all
select col = '79 73 71 68 63 61' union all
select col = '88 81 74 72 69 68 70' union all
select col = '78 73 70 64 64' union all
select col = '82 75 68 65 61' union all
select col = '47 40 39 36 29 23' union all
select col = '20 21 22 25 24' union all
select col = '53 54 55 56 59 60 61 61' union all
select col = '4 7 8 9 11 14 18' union all
select col = '25 26 29 30 33 39' union all
select col = '14 17 20 21 23 25 24 27' union all
select col = '54 56 57 60 58 59 58' union all
select col = '73 76 77 74 74' union all
select col = '22 25 28 27 30 33 37' union all
select col = '68 69 70 72 69 76' union all
select col = '20 22 25 28 29 32 32 34' union all
select col = '83 86 87 87 89 87' union all
select col = '19 22 24 24 24' union all
select col = '52 53 53 56 59 61 65' union all
select col = '62 64 67 69 69 76' union all
select col = '82 85 86 90 92 93' union all
select col = '9 10 12 16 17 20 19' union all
select col = '72 74 77 79 83 86 86' union all
select col = '44 47 48 49 50 54 57 61' union all
select col = '18 20 24 26 27 33' union all
select col = '86 87 89 94 95 96' union all
select col = '21 24 26 29 35 34' union all
select col = '10 13 14 16 18 19 25 25' union all
select col = '25 28 30 33 36 42 45 49' union all
select col = '58 61 63 70 76' union all
select col = '67 64 66 68 71 74 77 78' union all
select col = '21 19 22 24 25 26 24' union all
select col = '66 64 67 69 69' union all
select col = '90 87 90 93 94 98' union all
select col = '66 65 68 69 70 73 80' union all
select col = '14 12 9 12 15 18 20' union all
select col = '45 42 43 46 48 45 48 47' union all
select col = '97 94 93 95 97 97' union all
select col = '85 83 84 85 87 84 88' union all
select col = '55 54 56 53 54 59' union all
select col = '90 88 89 89 92 95 96 97' union all
select col = '3 2 3 4 4 7 9 6' union all
select col = '5 3 6 6 6' union all
select col = '40 39 41 44 46 46 50' union all
select col = '20 19 19 22 25 28 34' union all
select col = '83 81 83 87 88 89' union all
select col = '40 37 39 41 43 45 49 46' union all
select col = '77 75 79 81 83 83' union all
select col = '10 7 9 12 13 17 21' union all
select col = '70 69 72 74 76 80 87' union all
select col = '58 57 60 67 70 73 74' union all
select col = '73 72 74 81 80' union all
select col = '85 84 85 86 91 91' union all
select col = '44 42 44 50 52 54 55 59' union all
select col = '3 2 4 6 12 18' union all
select col = '84 84 85 86 88 89 90' union all
select col = '11 11 14 17 18 17' union all
select col = '29 29 30 33 36 38 40 40' union all
select col = '80 80 83 85 89' union all
select col = '32 32 34 36 39 42 49' union all
select col = '21 21 23 26 27 28 25 26' union all
select col = '95 95 94 97 96' union all
select col = '5 5 7 8 6 6' union all
select col = '73 73 74 73 77' union all
select col = '78 78 81 82 85 82 87' union all
select col = '88 88 91 94 94 95 97 98' union all
select col = '19 19 21 21 23 24 23' union all
select col = '54 54 54 55 58 58' union all
select col = '38 38 39 41 42 42 44 48' union all
select col = '53 53 53 56 59 61 66' union all
select col = '42 42 46 49 52 53' union all
select col = '60 60 64 67 69 66' union all
select col = '56 56 60 61 64 67 67' union all
select col = '58 58 60 64 65 68 69 73' union all
select col = '64 64 65 69 75' union all
select col = '77 77 80 85 88' union all
select col = '1 1 3 5 8 9 15 12' union all
select col = '23 23 24 26 33 36 37 37' union all
select col = '38 38 39 42 45 50 54' union all
select col = '45 45 47 48 50 57 62' union all
select col = '38 42 44 45 47 48' union all
select col = '76 80 81 84 85 83' union all
select col = '87 91 94 96 98 98' union all
select col = '9 13 14 17 18 21 25' union all
select col = '34 38 39 41 48' union all
select col = '19 23 25 28 27 28 29 31' union all
select col = '25 29 30 32 33 32 31' union all
select col = '82 86 89 86 86' union all
select col = '8 12 15 16 18 20 17 21' union all
select col = '54 58 59 62 65 63 68' union all
select col = '5 9 11 11 12 14 16' union all
select col = '35 39 41 43 46 46 47 46' union all
select col = '86 90 90 93 93' union all
select col = '53 57 58 58 59 62 66' union all
select col = '9 13 16 19 19 26' union all
select col = '49 53 57 59 62 63' union all
select col = '39 43 47 48 50 51 48' union all
select col = '22 26 27 29 32 36 36' union all
select col = '34 38 41 43 47 50 53 57' union all
select col = '65 69 72 73 77 82' union all
select col = '10 14 16 21 22 23 26 28' union all
select col = '17 21 22 24 29 26' union all
select col = '63 67 68 73 76 76' union all
select col = '28 32 35 41 45' union all
select col = '58 62 65 67 68 74 80' union all
select col = '15 22 23 26 28 29' union all
select col = '48 55 58 59 57' union all
select col = '57 64 66 68 69 69' union all
select col = '70 76 78 80 83 84 87 91' union all
select col = '46 51 54 55 57 59 62 68' union all
select col = '8 15 18 20 23 20 21 24' union all
select col = '81 86 88 86 89 88' union all
select col = '70 76 77 79 77 77' union all
select col = '45 52 54 51 55' union all
select col = '56 62 65 62 67' union all
select col = '62 69 71 71 74' union all
select col = '45 50 53 54 54 52' union all
select col = '63 69 71 71 72 72' union all
select col = '15 22 22 23 24 25 28 32' union all
select col = '30 36 39 42 42 48' union all
select col = '16 22 24 25 28 32 35' union all
select col = '14 21 25 28 29 30 33 31' union all
select col = '77 83 85 86 89 93 95 95' union all
select col = '32 37 41 43 45 46 50' union all
select col = '71 78 80 83 87 89 95' union all
select col = '63 69 72 78 79 80 82 84' union all
select col = '59 65 66 68 75 78 76' union all
select col = '13 18 23 25 26 26' union all
select col = '47 54 55 57 64 68' union all
select col = '52 58 63 65 68 73' union all
select col = '17 16 13 11 9 7 10' union all
select col = '12 10 9 8 6 5 5' union all
select col = '61 58 56 53 52 50 46' union all
select col = '72 71 70 69 66 65 59' union all
select col = '85 83 80 78 76 78 76 75' union all
select col = '27 24 25 24 21 18 16 19' union all
select col = '15 12 9 8 10 7 7' union all
select col = '37 34 31 29 31 28 26 22' union all
select col = '22 20 17 15 12 15 12 5' union all
select col = '76 73 71 70 70 67 64 61' union all
select col = '41 38 37 36 33 33 35' union all
select col = '96 94 91 89 87 87 87' union all
select col = '79 76 76 75 72 71 69 65' union all
select col = '59 56 53 53 50 45' union all
select col = '86 84 83 81 77 75 72 70' union all
select col = '32 29 28 24 22 24' union all
select col = '18 17 16 15 11 10 7 7' union all
select col = '18 16 15 11 7' union all
select col = '78 77 75 72 68 63' union all
select col = '35 32 26 23 20 19' union all
select col = '75 74 72 70 68 63 60 62' union all
select col = '38 37 36 29 26 23 23' union all
select col = '50 49 48 47 46 40 39 35' union all
select col = '77 75 72 67 65 58' union all
select col = '83 84 82 80 78 76 73' union all
select col = '34 37 35 33 30 27 26 27' union all
select col = '38 39 36 35 35' union all
select col = '79 81 79 76 72' union all
select col = '63 66 65 63 61 55' union all
select col = '96 97 98 97 96 94' union all
select col = '37 40 43 40 38 41' union all
select col = '77 78 77 74 72 74 74' union all
select col = '79 82 83 81 80 79 75' union all
select col = '14 15 14 13 12 15 14 9' union all
select col = '91 92 92 89 86' union all
select col = '39 42 42 41 39 36 37' union all
select col = '62 65 65 64 64' union all
select col = '41 44 44 43 40 36' union all
select col = '53 56 56 55 50' union all
select col = '25 26 24 21 18 14 13' union all
select col = '48 51 50 47 43 40 42' union all
select col = '11 13 10 9 5 5' union all
select col = '63 65 63 62 60 57 53 49' union all
select col = '53 55 51 50 44' union all
select col = '14 15 12 10 9 4 3' union all
select col = '86 89 82 81 78 76 73 76' union all
select col = '14 16 13 12 6 5 5' union all
select col = '17 18 13 11 7' union all
select col = '77 78 71 68 66 61' union all
select col = '55 55 54 51 50 47 44' union all
select col = '65 65 64 61 58 61' union all
select col = '66 66 64 63 61 59 59' union all
select col = '44 44 41 38 34' union all
select col = '48 48 45 43 42 37' union all
select col = '30 30 32 30 28' union all
select col = '86 86 84 81 78 81 82' union all
select col = '94 94 91 88 85 87 87' union all
select col = '71 71 70 69 68 67 68 64' union all
select col = '82 82 81 78 80 77 72' union all
select col = '42 42 39 39 37' union all
select col = '80 80 80 78 76 78' union all
select col = '69 69 66 65 65 65' union all
select col = '22 22 22 20 16' union all
select col = '17 17 15 15 14 8' union all
select col = '99 99 96 94 91 87 85 83' union all
select col = '21 21 17 15 16' union all
select col = '83 83 79 78 78' union all
select col = '21 21 18 16 12 9 5' union all
select col = '46 46 44 40 38 37 30' union all
select col = '26 26 24 19 18' union all
select col = '81 81 79 73 76' union all
select col = '51 51 45 44 44' union all
select col = '68 68 61 59 57 55 52 48' union all
select col = '20 20 19 18 17 12 5' union all
select col = '34 30 29 28 26 23 20 18' union all
select col = '27 23 22 21 18 16 18' union all
select col = '97 93 91 88 87 87' union all
select col = '17 13 10 9 8 6 2' union all
select col = '20 16 14 12 5' union all
select col = '96 92 90 87 89 87' union all
select col = '90 86 84 86 89' union all
select col = '45 41 42 39 37 36 36' union all
select col = '43 39 37 40 39 38 37 33' union all
select col = '98 94 91 90 88 86 88 82' union all
select col = '25 21 20 17 14 14 13' union all
select col = '91 87 87 86 85 87' union all
select col = '53 49 49 46 44 41 41' union all
select col = '86 82 82 79 78 75 73 69' union all
select col = '19 15 14 14 7' union all
select col = '85 81 80 76 73' union all
select col = '40 36 34 30 27 26 28' union all
select col = '61 57 54 53 49 48 46 46' union all
select col = '59 55 51 48 44' union all
select col = '78 74 70 67 66 65 59' union all
select col = '37 33 30 28 27 25 18 17' union all
select col = '17 13 6 5 2 4' union all
select col = '95 91 88 82 82' union all
select col = '71 67 64 61 58 52 48' union all
select col = '63 59 53 51 49 43' union all
select col = '62 56 54 53 52 49' union all
select col = '24 17 15 12 10 8 11' union all
select col = '66 60 57 56 55 53 53' union all
select col = '19 12 11 10 7 3' union all
select col = '64 59 57 54 52 46' union all
select col = '95 89 86 83 81 82 81 78' union all
select col = '93 86 85 83 86 84 86' union all
select col = '33 27 26 27 27' union all
select col = '98 92 93 91 90 89 88 84' union all
select col = '73 66 65 67 66 63 56' union all
select col = '67 61 60 60 58 56 53' union all
select col = '29 23 20 20 21' union all
select col = '86 80 78 78 78' union all
select col = '79 73 73 70 67 66 63 59' union all
select col = '81 76 75 72 72 65' union all
select col = '54 48 44 41 39' union all
select col = '47 40 39 37 33 35' union all
select col = '70 63 59 58 55 55' union all
select col = '44 39 35 32 28' union all
select col = '90 83 79 78 72' union all
select col = '42 37 34 32 29 27 21 19' union all
select col = '93 87 81 80 78 75 76' union all
select col = '93 86 83 76 74 74' union all
select col = '75 69 63 61 57' union all
select col = '79 73 72 70 68 62 55' union all
select col = '99 96 93 90 89 87 90 88' union all
select col = '58 60 57 56 53 50 46 40' union all
select col = '69 65 64 61 59 56 49' union all
select col = '36 39 42 45 45 47 45' union all
select col = '57 56 59 58 57 54 51 45' union all
select col = '52 55 56 53 54 59' union all
select col = '34 35 33 30 33' union all
select col = '74 77 75 75 73' union all
select col = '19 18 21 26 28 32' union all
select col = '42 42 39 40 43 43' union all
select col = '54 49 52 50 44' union all
select col = '1 5 8 10 17 20 19' union all
select col = '69 72 71 70 66 64 62 62' union all
select col = '64 64 59 56 55 54 50' union all
select col = '31 26 28 27 26 26' union all
select col = '2 7 9 10 14 17 21' union all
select col = '77 80 83 85 88 89 86 88' union all
select col = '55 48 47 44 41 41 38 38' union all
select col = '46 46 52 54 56 59 60 59' union all
select col = '18 25 26 30 33 32' union all
select col = '89 86 82 81 76' union all
select col = '61 59 55 54 51 49 50' union all
select col = '23 27 29 29 29' union all
select col = '51 51 49 46 45 43 45 41' union all
select col = '79 83 84 87 87' union all
select col = '15 14 7 5 2 1 2' union all
select col = '14 15 14 16 17' union all
select col = '11 14 15 12 14 16 17 17' union all
select col = '30 30 33 35 38 39 46 46' union all
select col = '8 11 14 12 10 6' union all
select col = '42 39 39 37 37' union all
select col = '38 39 40 43 45 48 51 50' union all
select col = '36 42 43 46 47 48 46' union all
select col = '39 33 33 32 31 29' union all
select col = '60 60 57 58 56 55 56' union all
select col = '16 19 16 12 13' union all
select col = '35 35 37 38 41 40' union all
select col = '63 56 50 49 47 44' union all
select col = '34 32 30 30 28 25 19' union all
select col = '22 22 23 24 27 30 30 34' union all
select col = '96 92 92 91 88 85 86' union all
select col = '41 43 40 42 37' union all
select col = '51 49 45 42 39 39' union all
select col = '20 24 25 28 32' union all
select col = '65 69 73 74 76 78 80 78' union all
select col = '35 35 36 40 44' union all
select col = '32 39 41 48 52' union all
select col = '79 83 84 86 89 95' union all
select col = '56 60 61 64 61 60' union all
select col = '14 21 26 27 29 31 37' union all
select col = '58 58 51 48 45 42 39 39' union all
select col = '56 50 47 42 41 38 35 35' union all
select col = '91 87 84 78 77 75 75' union all
select col = '38 37 38 39 39 42 42' union all
select col = '64 65 66 67 68 71 74 76' union all
select col = '73 71 70 68 66 63 62 59' union all
select col = '18 21 23 24 27 29 31 32' union all
select col = '83 80 78 77 74 73' union all
select col = '28 30 31 34 37 40' union all
select col = '24 21 19 18 17 15' union all
select col = '64 61 58 56 55 52 49' union all
select col = '79 80 83 86 87 90 93' union all
select col = '51 52 55 56 59 60 62' union all
select col = '27 25 22 21 19 17' union all
select col = '75 78 80 81 83 85' union all
select col = '30 32 33 36 37 40 43' union all
select col = '49 48 47 45 43 40' union all
select col = '59 56 54 52 50 47 45 43' union all
select col = '32 31 29 28 27' union all
select col = '78 75 72 69 66 65 64' union all
select col = '47 45 42 41 39 36' union all
select col = '65 62 59 56 53 52' union all
select col = '84 85 86 88 89 91 93 95' union all
select col = '10 12 13 16 17 19 20' union all
select col = '94 92 90 87 84 83 82 81' union all
select col = '59 58 57 55 52 49 48' union all
select col = '2 3 4 6 9 12 13 14' union all
select col = '58 56 53 51 49 47 44 42' union all
select col = '33 36 38 40 42 44 46 47' union all
select col = '20 18 17 15 13 10 7 6' union all
select col = '88 86 83 80 79' union all
select col = '56 55 53 51 48 47' union all
select col = '69 72 74 75 78 79' union all
select col = '35 37 39 40 43 44 46' union all
select col = '25 22 20 18 15' union all
select col = '14 11 10 8 6 5' union all
select col = '50 52 55 57 59 60 61' union all
select col = '69 67 64 63 62 60' union all
select col = '90 89 86 85 82 81' union all
select col = '47 50 52 55 58 61' union all
select col = '17 20 22 23 25 28' union all
select col = '38 39 42 44 45 48' union all
select col = '44 45 48 49 50 51' union all
select col = '27 29 30 31 32 34 37 39' union all
select col = '50 53 55 56 57' union all
select col = '27 25 23 22 21 19 16 13' union all
select col = '77 80 83 86 89 91' union all
select col = '69 71 72 74 76 78' union all
select col = '16 17 18 19 21 23' union all
select col = '53 56 59 60 63' union all
select col = '68 70 73 76 79 81' union all
select col = '31 28 26 25 22 19' union all
select col = '45 44 41 40 39 38 36' union all
select col = '26 25 24 22 21 19' union all
select col = '76 77 79 81 84' union all
select col = '14 15 17 18 21' union all
select col = '31 33 34 35 37 40' union all
select col = '71 68 65 63 62' union all
select col = '78 79 80 82 85 88' union all
select col = '73 76 79 81 84 87' union all
select col = '96 95 94 93 91 90 89' union all
select col = '85 82 81 79 78 77 74' union all
select col = '80 77 76 73 72' union all
select col = '59 62 65 67 69 71' union all
select col = '18 19 22 24 27 29' union all
select col = '36 39 42 45 48 49' union all
select col = '17 18 20 23 24 26 29 31' union all
select col = '7 10 13 16 19' union all
select col = '47 46 43 41 38 35' union all
select col = '87 84 82 79 77 76 74 72' union all
select col = '76 75 72 71 70 69 68 65' union all
select col = '56 59 60 63 64' union all
select col = '25 28 31 34 35' union all
select col = '90 88 85 82 80 77 76' union all
select col = '51 50 47 46 43 40' union all
select col = '18 21 22 25 26' union all
select col = '12 11 9 8 6' union all
select col = '66 64 63 62 60 58 55' union all
select col = '63 62 61 58 57 56 55' union all
select col = '59 57 54 52 51 50 48' union all
select col = '51 49 48 45 42 39 38' union all
select col = '86 84 82 80 78 77 74 71' union all
select col = '39 40 42 44 45 47 49' union all
select col = '80 79 76 75 72 70' union all
select col = '88 85 84 82 79 78 75 73' union all
select col = '49 51 52 55 58 60 62 63' union all
select col = '71 70 69 67 66 64 62 60' union all
select col = '60 57 56 54 51 48 47 45' union all
select col = '79 77 74 72 70 68 65' union all
select col = '74 75 76 78 80 83 86 87' union all
select col = '12 11 9 6 4' union all
select col = '60 61 64 65 67 70 71 73' union all
select col = '14 11 9 7 6 5 2' union all
select col = '1 2 3 5 8 11 12' union all
select col = '73 74 77 78 80 82' union all
select col = '26 25 22 21 20 17' union all
select col = '76 75 74 71 70 69 68' union all
select col = '6 7 10 13 14 16 19' union all
select col = '69 66 65 64 61 58' union all
select col = '2 3 4 7 8 10 11 13' union all
select col = '94 91 89 87 86' union all
select col = '29 27 26 25 23 22' union all
select col = '12 15 17 19 22' union all
select col = '71 73 75 78 79' union all
select col = '68 69 71 73 76' union all
select col = '97 96 94 92 89 86' union all
select col = '57 58 60 61 63 65 68 69' union all
select col = '55 57 58 59 60 62' union all
select col = '78 81 83 84 85 87 88 89' union all
select col = '42 40 38 37 34 32 30' union all
select col = '64 61 59 56 53 50 48 46' union all
select col = '23 20 19 16 15 14 11' union all
select col = '76 78 81 83 86 87 88 90' union all
select col = '13 16 17 20 23' union all
select col = '4 5 6 7 10 11 13 14' union all
select col = '69 72 73 76 77 78 79 81' union all
select col = '77 75 73 71 69 67' union all
select col = '76 79 82 83 85 88 91' union all
select col = '65 68 69 70 72 73 75 78' union all
select col = '21 22 23 26 29 32 35 37' union all
select col = '68 66 65 64 63' union all
select col = '8 9 12 13 14 15' union all
select col = '59 58 55 52 50 47' union all
select col = '19 22 25 26 28 29' union all
select col = '41 38 35 32 30' union all
select col = '68 69 70 72 73 76 77 80' union all
select col = '27 26 25 23 20 18 17 14' union all
select col = '35 37 40 43 46 48 50 52' union all
select col = '13 12 9 6 3' union all
select col = '99 96 93 91 89' union all
select col = '20 19 18 16 14 13' union all
select col = '62 59 57 54 53 52' union all
select col = '46 49 51 54 55 57' union all
select col = '92 93 96 97 98' union all
select col = '88 86 84 81 79 76 74 72' union all
select col = '31 33 36 37 40 43 44' union all
select col = '74 71 69 67 64' union all
select col = '73 70 69 67 66 64 63' union all
select col = '71 70 67 66 64 61 60' union all
select col = '41 44 47 49 50' union all
select col = '98 96 94 91 88' union all
select col = '36 39 40 43 44 45 48' union all
select col = '47 48 51 52 55 58 60 61' union all
select col = '17 14 13 10 7' union all
select col = '73 74 76 79 81 83 86' union all
select col = '42 40 38 37 36 35' union all
select col = '51 52 53 55 57 60 63 65' union all
select col = '45 43 41 38 36 35 32 29' union all
select col = '9 10 13 14 16' union all
select col = '82 85 87 89 90 92 93 95' union all
select col = '34 36 38 39 42' union all
select col = '82 83 86 87 89 92' union all
select col = '14 13 12 11 10 9' union all
select col = '45 48 49 51 53 54 55 58' union all
select col = '59 58 56 53 52' union all
select col = '25 23 21 18 17 14 13 12' union all
select col = '35 36 38 41 44 46 48' union all
select col = '21 23 26 29 31 32 33' union all
select col = '94 92 90 87 84 82 81' union all
select col = '53 52 50 47 45 43' union all
select col = '69 71 74 77 80 81 83 86' union all
select col = '47 48 51 53 56 57 58' union all
select col = '11 14 16 17 19 21 24' union all
select col = '10 13 15 16 18' union all
select col = '70 67 65 63 62' union all
select col = '41 40 38 37 34 32 29 27' union all
select col = '19 18 15 14 13' union all
select col = '49 51 52 53 54' union all
select col = '43 44 45 46 48 50 51 52' union all
select col = '28 25 24 23 22 19 18' union all
select col = '87 89 90 93 95 97 99' union all
select col = '38 39 41 43 45 48 51' union all
select col = '20 19 16 15 14 12 10' union all
select col = '87 88 89 92 95 98' union all
select col = '14 17 18 20 23 26 28' union all
select col = '41 39 36 33 32 29 27 26' union all
select col = '10 8 7 5 2' union all
select col = '10 12 15 18 21' union all
select col = '78 80 81 82 84 86' union all
select col = '31 32 34 36 38' union all
select col = '41 44 46 47 48 51' union all
select col = '19 18 15 12 9 8 6 5' union all
select col = '79 78 75 74 73' union all
select col = '24 23 21 18 15 12' union all
select col = '74 73 71 68 67 66 63 61' union all
select col = '57 55 54 52 50 47' union all
select col = '88 85 84 82 80 79 77' union all
select col = '22 23 25 26 27 30' union all
select col = '54 55 57 58 60 61' union all
select col = '55 52 51 50 48 47 45' union all
select col = '26 24 23 22 21' union all
select col = '54 56 59 60 63 65 66 68' union all
select col = '12 9 8 5 3' union all
select col = '55 52 51 48 47 45 44 43' union all
select col = '78 75 74 72 69' union all
select col = '56 53 50 49 47' union all
select col = '86 84 81 78 77 76 74 71' union all
select col = '63 60 59 57 56 55' union all
select col = '1 3 6 7 9 10 12' union all
select col = '92 89 87 86 84 81 79 78' union all
select col = '26 23 20 18 16 13' union all
select col = '2 4 5 8 11 13' union all
select col = '53 56 58 61 63 66 67' union all
select col = '33 30 27 24 21 19' union all
select col = '80 83 85 87 90' union all
select col = '88 86 85 84 82 79' 



drop table if exists #base

select
rn = ROW_NUMBER() over (order by col)
, col = col + ' ' -- this is to make the string split easier, for the final part 
into #base 
from #input


-- splitting numbers
drop table if exists #stg

;with cte as
(select 
 id = 1
 , curr = cast(left(col, CHARINDEX(' ', col)-1) as int)
 , rem = right(col, datalength(col) - CHARINDEX(' ', col) )
 , rn
 , og = col 
from #base

union all 

select id + 1 
, curr = cast(left(rem, CHARINDEX(' ', rem)-1) as int)
, rem = right(rem, datalength(rem) - CHARINDEX(' ', rem) )
, rn
, og 
from cte
where CHARINDEX(' ', rem) > 0  and datalength(rem) > 1
)
select id, curr, rn 
into #stg 
from cte 
order by rn, id 
option ( maxrecursion 0 )



---- Question 1 
-- check if all decreasing or increasing, and if the distance between the adjacent number is between 1 and 3 
-- idea: if all increasing or decreasing, the abs (sum of the trend ) would be same as count - 1 in each group 
-- if all the diff are good, the sum(good_diff) would be same as count - 1 in each group

drop table if exists #q1_base


select 
trend = case when lead(curr, 1) over(partition by rn order by id ) < curr then -1 else 1 end
, good_diff = case when abs(curr - lead(curr, 1) over(partition by rn order by id ) ) between 1 and 3 then 1 else 0 end
, rn_total = count(curr) over(partition by rn )
, id
, curr
, rn
into #q1_base
from #stg 

select cnt = count(*) from 
(
	select 
	rn
	, trend = abs(sum(trend))
	, good_diff = sum(good_diff)
	, rn_total = min(rn_total)
	from #q1_base
	where id != rn_total -- take out the last number, as it has nothing to compare to
	group by rn 
 ) T 
 where trend = rn_total - 1 
 and good_diff = rn_total - 1 
  

----Question 2 

-- check if one level can be removed to make the report safe
-- idea is to generate all the possible scenarios, and check if the report is good
-- generating scenario numbers - for each scenario, delete the number same as the scenario id, this is to mimic if that level is deleted

drop table if exists #q2_base

select rn into #q1_good_rn from 
(
	select 
	rn
	, trend = abs(sum(trend))
	, good_diff = sum(good_diff)
	, rn_total = min(rn_total)
	from #q1_base
	where id != rn_total -- take out the last number, as it has nothing to compare to
	group by rn 
	) T 
	where trend = rn_total - 1 
	and good_diff = rn_total - 1 


select 
total_number_in_group = count(*) over (partition by rn)
, * into #q2_base 
from #stg
where rn not in (select rn from #q1_good_rn)


drop table if exists #q2_stg

; with max_possible as 
(select mx = max(id) from #stg)
, scenarios as 
(select scenario = 1
union all 
select scenario + 1  from scenarios 
where scenario < (select mx from max_possible)
)
select
total_number_in_group = total_number_in_group - 1 -- this is to delete the one level, so the total number reduces by 1 
, id
, curr
, rn
, scenario
into #q2_stg
from #q2_base , scenarios
where scenario <= total_number_in_group -- the seq contains 1 to max possible scenario number, no need to keep all the scenario for each report.
and id != scenario -- take current number out of current scenario 



drop table if exists #q2

select 
trend = case when lead(curr, 1) over(partition by rn, scenario order by id ) < curr then -1 else 1 end
, good_diff = case when abs(curr - lead(curr, 1) over(partition by rn, scenario order by id ) ) between 1 and 3 then 1 else 0 end
, total_number_in_group
, max_id_in_report_scenario = max(id) over(partition by rn, scenario)
, id
, curr
, rn
, scenario
into #q2
from #q2_stg 

--select * from #stg order by rn, id
--select * from #q2 order by rn,  scenario,  id 


--select 
--rn
--, scenario
--, trend = abs(sum(trend))
--, good_diff = sum(good_diff)
--, rn_total = min(total_number_in_group)
--from #q2
--where id != max_id_in_report_scenario -- take out the last number, as it has nothing to compare to
--group by rn, scenario
--order by 1 , 2 


drop table if exists #q2_good_rn

select distinct rn
into #q2_good_rn
from  -- using distinct, as there could be scenarios make the report valid
(
	select 
	rn
	, scenario
	, trend = abs(sum(trend))
	, good_diff = sum(good_diff)
	, rn_total = min(total_number_in_group)
	from #q2
	where id != max_id_in_report_scenario -- take out the last number, as it has nothing to compare to
	group by rn, scenario
 ) T 
 where trend = rn_total - 1 
 and good_diff = rn_total - 1 


select res = count(*) from 
(
	select distinct rn from #q1_good_rn
	union all 
	select distinct rn from #q2_good_rn
) _


