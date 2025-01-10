-- Running time : 00:21:23.577 
-- TODO: To optimize the logic - reference the ones from github

-- Idea: 
-- To break all the priority list into A and B 
-- To break the update list
-- For each number in the update list, can we find any conflict in B column from the priority list?
-- If no conflict find for the entire update list, then it's a good list



drop table if exists #input_priority

-- select col = '47|53' into #input_priority union all select col = '97|13' union all select col = '97|61' union all select col = '97|47' union all select col = '75|29' union all select col = '61|13' union all select col = '75|53' union all select col = '29|13' union all select col = '97|29' union all select col = '53|29' union all select col = '61|53' union all select col = '97|53' union all select col = '61|29' union all select col = '47|13' union all select col = '75|47' union all select col = '97|75' union all select col = '47|61' union all select col = '75|61' union all select col = '47|29' union all select col = '75|13' union all select col = '53|13' 
select col = '39|57' into #input_priority union all select col = '31|97' union all select col = '31|75' union all select col = '29|45' union all select col = '29|73' union all select col = '29|84' union all select col = '66|91' union all select col = '66|39' union all select col = '66|57' union all select col = '66|54' union all select col = '97|16' union all select col = '97|38' union all select col = '97|59' union all select col = '97|11' union all select col = '97|62' union all select col = '87|38' union all select col = '87|59' union all select col = '87|18' union all select col = '87|93' union all select col = '87|13' union all select col = '87|33' union all select col = '25|55' union all select col = '25|22' union all select col = '25|31' union all select col = '25|64' union all select col = '25|33' union all select col = '25|85' union all select col = '25|93' union all select col = '68|11' union all select col = '68|57' union all select col = '68|36' union all select col = '68|78' union all select col = '68|66' union all select col = '68|73' union all select col = '68|39' union all select col = '68|27' union all select col = '32|29' union all select col = '32|73' union all select col = '32|45' union all select col = '32|14' union all select col = '32|48' union all select col = '32|39' union all select col = '32|54' union all select col = '32|74' union all select col = '32|17' union all select col = '17|76' union all select col = '17|45' union all select col = '17|25' union all select col = '17|14' union all select col = '17|91' union all select col = '17|11' union all select col = '17|27' union all select col = '17|38' union all select col = '17|16' union all select col = '17|22' union all select col = '34|66' union all select col = '34|91' union all select col = '34|64' union all select col = '34|29' union all select col = '34|74' union all select col = '34|65' union all select col = '34|68' union all select col = '34|26' union all select col = '34|36' union all select col = '34|13' union all select col = '34|93' union all select col = '48|76' union all select col = '48|34' union all select col = '48|55' union all select col = '48|22' union all select col = '48|42' union all select col = '48|89' union all select col = '48|14' union all select col = '48|85' union all select col = '48|87' union all select col = '48|23' union all select col = '48|38' union all select col = '48|79' union all select col = '73|62' union all select col = '73|13' union all select col = '73|42' union all select col = '73|25' union all select col = '73|55' union all select col = '73|26' union all select col = '73|65' union all select col = '73|59' union all select col = '73|18' union all select col = '73|21' union all select col = '73|64' union all select col = '73|34' union all select col = '73|79' union all select col = '52|21' union all select col = '52|18' union all select col = '52|13' union all select col = '52|22' union all select col = '52|32' union all select col = '52|55' union all select col = '52|85' union all select col = '52|42' union all select col = '52|93' union all select col = '52|39' union all select col = '52|26' union all select col = '52|66' union all select col = '52|34' union all select col = '52|68' union all select col = '74|27' union all select col = '74|57' union all select col = '74|48' union all select col = '74|73' union all select col = '74|91' union all select col = '74|16' union all select col = '74|87' union all select col = '74|38' union all select col = '74|54' union all select col = '74|75' union all select col = '74|29' union all select col = '74|62' union all select col = '74|69' union all select col = '74|84' union all select col = '74|23' union all select col = '38|37' union all select col = '38|21' union all select col = '38|13' union all select col = '38|42' union all select col = '38|64' union all select col = '38|55' union all select col = '38|66' union all select col = '38|23' union all select col = '38|85' union all select col = '38|32' union all select col = '38|79' union all select col = '38|34' union all select col = '38|89' union all select col = '38|33' union all select col = '38|52' union all select col = '38|22' union all select col = '69|65' union all select col = '69|62' union all select col = '69|38' union all select col = '69|55' union all select col = '69|34' union all select col = '69|37' union all select col = '69|33' union all select col = '69|79' union all select col = '69|21' union all select col = '69|18' union all select col = '69|87' union all select col = '69|23' union all select col = '69|85' union all select col = '69|22' union all select col = '69|16' union all select col = '69|93' union all select col = '69|89' union all select col = '11|18' union all select col = '11|85' union all select col = '11|89' union all select col = '11|59' union all select col = '11|52' union all select col = '11|22' union all select col = '11|26' union all select col = '11|87' union all select col = '11|25' union all select col = '11|76' union all select col = '11|37' union all select col = '11|23' union all select col = '11|42' union all select col = '11|21' union all select col = '11|62' union all select col = '11|38' union all select col = '11|13' union all select col = '11|69' union all select col = '33|97' union all select col = '33|27' union all select col = '33|68' union all select col = '33|29' union all select col = '33|44' union all select col = '33|31' union all select col = '33|93' union all select col = '33|66' union all select col = '33|32' union all select col = '33|84' union all select col = '33|11' union all select col = '33|45' union all select col = '33|17' union all select col = '33|54' union all select col = '33|78' union all select col = '33|75' union all select col = '33|39' union all select col = '33|36' union all select col = '33|91' union all select col = '91|79' union all select col = '91|55' union all select col = '91|22' union all select col = '91|87' union all select col = '91|23' union all select col = '91|36' union all select col = '91|25' union all select col = '91|16' union all select col = '91|76' union all select col = '91|45' union all select col = '91|59' union all select col = '91|11' union all select col = '91|75' union all select col = '91|29' union all select col = '91|62' union all select col = '91|27' union all select col = '91|69' union all select col = '91|54' union all select col = '91|48' union all select col = '91|52' union all select col = '75|34' union all select col = '75|21' union all select col = '75|42' union all select col = '75|25' union all select col = '75|76' union all select col = '75|79' union all select col = '75|23' union all select col = '75|89' union all select col = '75|18' union all select col = '75|22' union all select col = '75|26' union all select col = '75|62' union all select col = '75|69' union all select col = '75|73' union all select col = '75|11' union all select col = '75|85' union all select col = '75|37' union all select col = '75|14' union all select col = '75|52' union all select col = '75|59' union all select col = '75|38' union all select col = '59|55' union all select col = '59|13' union all select col = '59|79' union all select col = '59|32' union all select col = '59|65' union all select col = '59|93' union all select col = '59|42' union all select col = '59|52' union all select col = '59|18' union all select col = '59|44' union all select col = '59|37' union all select col = '59|85' union all select col = '59|22' union all select col = '59|25' union all select col = '59|68' union all select col = '59|33' union all select col = '59|38' union all select col = '59|31' union all select col = '59|21' union all select col = '59|23' union all select col = '59|89' union all select col = '59|26' union all select col = '26|29' union all select col = '26|39' union all select col = '26|44' union all select col = '26|31' union all select col = '26|91' union all select col = '26|17' union all select col = '26|32' union all select col = '26|93' union all select col = '26|74' union all select col = '26|66' union all select col = '26|48' union all select col = '26|57' union all select col = '26|36' union all select col = '26|97' union all select col = '26|13' union all select col = '26|45' union all select col = '26|64' union all select col = '26|65' union all select col = '26|27' union all select col = '26|33' union all select col = '26|84' union all select col = '26|78' union all select col = '26|68' union all select col = '79|42' union all select col = '79|26' union all select col = '79|57' union all select col = '79|31' union all select col = '79|89' union all select col = '79|93' union all select col = '79|18' union all select col = '79|17' union all select col = '79|33' union all select col = '79|68' union all select col = '79|74' union all select col = '79|39' union all select col = '79|85' union all select col = '79|37' union all select col = '79|78' union all select col = '79|21' union all select col = '79|44' union all select col = '79|66' union all select col = '79|65' union all select col = '79|34' union all select col = '79|64' union all select col = '79|32' union all select col = '79|97' union all select col = '79|13' union all select col = '42|37' union all select col = '42|18' union all select col = '42|13' union all select col = '42|97' union all select col = '42|29' union all select col = '42|39' union all select col = '42|78' union all select col = '42|64' union all select col = '42|65' union all select col = '42|66' union all select col = '42|89' union all select col = '42|26' union all select col = '42|44' union all select col = '42|57' union all select col = '42|85' union all select col = '42|34' union all select col = '42|32' union all select col = '42|93' union all select col = '42|31' union all select col = '42|74' union all select col = '42|91' union all select col = '42|17' union all select col = '42|33' union all select col = '42|68' union all select col = '18|17' union all select col = '18|97' union all select col = '18|44' union all select col = '18|36' union all select col = '18|29' union all select col = '18|33' union all select col = '18|91' union all select col = '18|27' union all select col = '18|64' union all select col = '18|74' union all select col = '18|57' union all select col = '18|65' union all select col = '18|13' union all select col = '18|68' union all select col = '18|84' union all select col = '18|26' union all select col = '18|78' union all select col = '18|39' union all select col = '18|66' union all select col = '18|54' union all select col = '18|93' union all select col = '18|31' union all select col = '18|32' union all select col = '18|37' union all select col = '22|26' union all select col = '22|93' union all select col = '22|13' union all select col = '22|78' union all select col = '22|66' union all select col = '22|37' union all select col = '22|31' union all select col = '22|97' union all select col = '22|34' union all select col = '22|32' union all select col = '22|85' union all select col = '22|21' union all select col = '22|39' union all select col = '22|42' union all select col = '22|65' union all select col = '22|64' union all select col = '22|44' union all select col = '22|33' union all select col = '22|89' union all select col = '22|74' union all select col = '22|79' union all select col = '22|68' union all select col = '22|55' union all select col = '22|18' union all select col = '62|44' union all select col = '62|25' union all select col = '62|85' union all select col = '62|22' union all select col = '62|64' union all select col = '62|33' union all select col = '62|13' union all select col = '62|87' union all select col = '62|26' union all select col = '62|89' union all select col = '62|16' union all select col = '62|23' union all select col = '62|79' union all select col = '62|38' union all select col = '62|59' union all select col = '62|93' union all select col = '62|55' union all select col = '62|37' union all select col = '62|18' union all select col = '62|21' union all select col = '62|42' union all select col = '62|34' union all select col = '62|65' union all select col = '62|52' union all select col = '21|34' union all select col = '21|66' union all select col = '21|93' union all select col = '21|17' union all select col = '21|44' union all select col = '21|37' union all select col = '21|68' union all select col = '21|26' union all select col = '21|74' union all select col = '21|57' union all select col = '21|18' union all select col = '21|91' union all select col = '21|65' union all select col = '21|13' union all select col = '21|31' union all select col = '21|89' union all select col = '21|32' union all select col = '21|85' union all select col = '21|39' union all select col = '21|97' union all select col = '21|78' union all select col = '21|42' union all select col = '21|64' union all select col = '21|33' union all select col = '93|84' union all select col = '93|11' union all select col = '93|57' union all select col = '93|45' union all select col = '93|36' union all select col = '93|29' union all select col = '93|76' union all select col = '93|39' union all select col = '93|31' union all select col = '93|14' union all select col = '93|91' union all select col = '93|32' union all select col = '93|66' union all select col = '93|75' union all select col = '93|48' union all select col = '93|97' union all select col = '93|78' union all select col = '93|73' union all select col = '93|74' union all select col = '93|54' union all select col = '93|17' union all select col = '93|27' union all select col = '93|44' union all select col = '93|68' union all select col = '23|32' union all select col = '23|26' union all select col = '23|68' union all select col = '23|79' union all select col = '23|39' union all select col = '23|64' union all select col = '23|25' union all select col = '23|65' union all select col = '23|22' union all select col = '23|85' union all select col = '23|31' union all select col = '23|93' union all select col = '23|55' union all select col = '23|21' union all select col = '23|13' union all select col = '23|89' union all select col = '23|37' union all select col = '23|66' union all select col = '23|52' union all select col = '23|18' union all select col = '23|33' union all select col = '23|44' union all select col = '23|42' union all select col = '23|34' union all select col = '84|52' union all select col = '84|73' union all select col = '84|11' union all select col = '84|55' union all select col = '84|14' union all select col = '84|87' union all select col = '84|76' union all select col = '84|89' union all select col = '84|16' union all select col = '84|62' union all select col = '84|48' union all select col = '84|42' union all select col = '84|54' union all select col = '84|21' union all select col = '84|69' union all select col = '84|38' union all select col = '84|22' union all select col = '84|45' union all select col = '84|79' union all select col = '84|34' union all select col = '84|23' union all select col = '84|75' union all select col = '84|59' union all select col = '84|25' union all select col = '16|22' union all select col = '16|18' union all select col = '16|85' union all select col = '16|65' union all select col = '16|37' union all select col = '16|44' union all select col = '16|13' union all select col = '16|21' union all select col = '16|38' union all select col = '16|59' union all select col = '16|25' union all select col = '16|23' union all select col = '16|87' union all select col = '16|55' union all select col = '16|68' union all select col = '16|52' union all select col = '16|89' union all select col = '16|33' union all select col = '16|34' union all select col = '16|64' union all select col = '16|42' union all select col = '16|79' union all select col = '16|26' union all select col = '16|93' union all select col = '85|44' union all select col = '85|65' union all select col = '85|39' union all select col = '85|37' union all select col = '85|84' union all select col = '85|57' union all select col = '85|64' union all select col = '85|26' union all select col = '85|32' union all select col = '85|91' union all select col = '85|74' union all select col = '85|33' union all select col = '85|18' union all select col = '85|27' union all select col = '85|78' union all select col = '85|93' union all select col = '85|17' union all select col = '85|97' union all select col = '85|66' union all select col = '85|31' union all select col = '85|36' union all select col = '85|29' union all select col = '85|13' union all select col = '85|68' union all select col = '55|26' union all select col = '55|89' union all select col = '55|64' union all select col = '55|37' union all select col = '55|78' union all select col = '55|44' union all select col = '55|93' union all select col = '55|68' union all select col = '55|39' union all select col = '55|97' union all select col = '55|79' union all select col = '55|17' union all select col = '55|21' union all select col = '55|31' union all select col = '55|85' union all select col = '55|66' union all select col = '55|13' union all select col = '55|65' union all select col = '55|42' union all select col = '55|18' union all select col = '55|34' union all select col = '55|33' union all select col = '55|32' union all select col = '55|74' union all select col = '65|75' union all select col = '65|66' union all select col = '65|11' union all select col = '65|78' union all select col = '65|39' union all select col = '65|68' union all select col = '65|44' union all select col = '65|97' union all select col = '65|36' union all select col = '65|31' union all select col = '65|45' union all select col = '65|91' union all select col = '65|14' union all select col = '65|48' union all select col = '65|33' union all select col = '65|57' union all select col = '65|84' union all select col = '65|17' union all select col = '65|93' union all select col = '65|54' union all select col = '65|27' union all select col = '65|29' union all select col = '65|74' union all select col = '65|32' union all select col = '76|37' union all select col = '76|25' union all select col = '76|42' union all select col = '76|69' union all select col = '76|23' union all select col = '76|18' union all select col = '76|16' union all select col = '76|89' union all select col = '76|62' union all select col = '76|52' union all select col = '76|34' union all select col = '76|55' union all select col = '76|21' union all select col = '76|13' union all select col = '76|79' union all select col = '76|38' union all select col = '76|65' union all select col = '76|85' union all select col = '76|26' union all select col = '76|59' union all select col = '76|87' union all select col = '76|73' union all select col = '76|64' union all select col = '76|22' union all select col = '27|21' union all select col = '27|55' union all select col = '27|38' union all select col = '27|79' union all select col = '27|59' union all select col = '27|73' union all select col = '27|75' union all select col = '27|11' union all select col = '27|16' union all select col = '27|62' union all select col = '27|42' union all select col = '27|23' union all select col = '27|76' union all select col = '27|22' union all select col = '27|45' union all select col = '27|34' union all select col = '27|52' union all select col = '27|84' union all select col = '27|87' union all select col = '27|25' union all select col = '27|48' union all select col = '27|69' union all select col = '27|54' union all select col = '27|14' union all select col = '14|52' union all select col = '14|73' union all select col = '14|22' union all select col = '14|69' union all select col = '14|25' union all select col = '14|34' union all select col = '14|16' union all select col = '14|23' union all select col = '14|21' union all select col = '14|37' union all select col = '14|38' union all select col = '14|64' union all select col = '14|87' union all select col = '14|85' union all select col = '14|59' union all select col = '14|26' union all select col = '14|13' union all select col = '14|18' union all select col = '14|76' union all select col = '14|42' union all select col = '14|62' union all select col = '14|79' union all select col = '14|55' union all select col = '14|89' union all select col = '36|48' union all select col = '36|75' union all select col = '36|23' union all select col = '36|21' union all select col = '36|73' union all select col = '36|84' union all select col = '36|54' union all select col = '36|87' union all select col = '36|25' union all select col = '36|62' union all select col = '36|42' union all select col = '36|16' union all select col = '36|79' union all select col = '36|76' union all select col = '36|27' union all select col = '36|38' union all select col = '36|11' union all select col = '36|22' union all select col = '36|69' union all select col = '36|52' union all select col = '36|45' union all select col = '36|14' union all select col = '36|55' union all select col = '36|59' union all select col = '13|17' union all select col = '13|44' union all select col = '13|27' union all select col = '13|93' union all select col = '13|32' union all select col = '13|33' union all select col = '13|66' union all select col = '13|48' union all select col = '13|91' union all select col = '13|31' union all select col = '13|54' union all select col = '13|78' union all select col = '13|57' union all select col = '13|29' union all select col = '13|64' union all select col = '13|84' union all select col = '13|74' union all select col = '13|68' union all select col = '13|39' union all select col = '13|45' union all select col = '13|97' union all select col = '13|36' union all select col = '13|75' union all select col = '13|65' union all select col = '57|29' union all select col = '57|14' union all select col = '57|54' union all select col = '57|25' union all select col = '57|76' union all select col = '57|45' union all select col = '57|59' union all select col = '57|69' union all select col = '57|91' union all select col = '57|75' union all select col = '57|87' union all select col = '57|27' union all select col = '57|16' union all select col = '57|11' union all select col = '57|22' union all select col = '57|84' union all select col = '57|55' union all select col = '57|73' union all select col = '57|38' union all select col = '57|36' union all select col = '57|48' union all select col = '57|62' union all select col = '57|52' union all select col = '57|23' union all select col = '89|29' union all select col = '89|18' union all select col = '89|66' union all select col = '89|37' union all select col = '89|33' union all select col = '89|68' union all select col = '89|39' union all select col = '89|85' union all select col = '89|13' union all select col = '89|44' union all select col = '89|97' union all select col = '89|27' union all select col = '89|91' union all select col = '89|32' union all select col = '89|93' union all select col = '89|31' union all select col = '89|64' union all select col = '89|36' union all select col = '89|74' union all select col = '89|57' union all select col = '89|17' union all select col = '89|65' union all select col = '89|26' union all select col = '89|78' union all select col = '78|75' union all select col = '78|23' union all select col = '78|45' union all select col = '78|48' union all select col = '78|69' union all select col = '78|25' union all select col = '78|17' union all select col = '78|84' union all select col = '78|73' union all select col = '78|29' union all select col = '78|36' union all select col = '78|14' union all select col = '78|91' union all select col = '78|57' union all select col = '78|76' union all select col = '78|87' union all select col = '78|62' union all select col = '78|27' union all select col = '78|38' union all select col = '78|16' union all select col = '78|11' union all select col = '78|54' union all select col = '78|59' union all select col = '78|52' union all select col = '64|33' union all select col = '64|27' union all select col = '64|44' union all select col = '64|57' union all select col = '64|78' union all select col = '64|11' union all select col = '64|65' union all select col = '64|48' union all select col = '64|31' union all select col = '64|93' union all select col = '64|39' union all select col = '64|45' union all select col = '64|17' union all select col = '64|84' union all select col = '64|91' union all select col = '64|74' union all select col = '64|29' union all select col = '64|75' union all select col = '64|68' union all select col = '64|97' union all select col = '64|32' union all select col = '64|36' union all select col = '64|54' union all select col = '64|66' union all select col = '54|34' union all select col = '54|16' union all select col = '54|79' union all select col = '54|85' union all select col = '54|23' union all select col = '54|87' union all select col = '54|69' union all select col = '54|73' union all select col = '54|52' union all select col = '54|21' union all select col = '54|14' union all select col = '54|75' union all select col = '54|22' union all select col = '54|11' union all select col = '54|48' union all select col = '54|59' union all select col = '54|25' union all select col = '54|38' union all select col = '54|45' union all select col = '54|55' union all select col = '54|89' union all select col = '54|76' union all select col = '54|62' union all select col = '54|42' union all select col = '37|91' union all select col = '37|65' union all select col = '37|44' union all select col = '37|13' union all select col = '37|31' union all select col = '37|64' union all select col = '37|17' union all select col = '37|66' union all select col = '37|33' union all select col = '37|36' union all select col = '37|78' union all select col = '37|93' union all select col = '37|68' union all select col = '37|74' union all select col = '37|32' union all select col = '37|29' union all select col = '37|26' union all select col = '37|48' union all select col = '37|39' union all select col = '37|54' union all select col = '37|97' union all select col = '37|84' union all select col = '37|57' union all select col = '37|27' union all select col = '44|54' union all select col = '44|75' union all select col = '44|68' union all select col = '44|69' union all select col = '44|14' union all select col = '44|45' union all select col = '44|97' union all select col = '44|17' union all select col = '44|84' union all select col = '44|29' union all select col = '44|74' union all select col = '44|78' union all select col = '44|27' union all select col = '44|66' union all select col = '44|31' union all select col = '44|39' union all select col = '44|32' union all select col = '44|91' union all select col = '44|57' union all select col = '44|76' union all select col = '44|11' union all select col = '44|48' union all select col = '44|73' union all select col = '44|36' union all select col = '45|76' union all select col = '45|34' union all select col = '45|73' union all select col = '45|21' union all select col = '45|85' union all select col = '45|38' union all select col = '45|59' union all select col = '45|25' union all select col = '45|79' union all select col = '45|87' union all select col = '45|11' union all select col = '45|62' union all select col = '45|52' union all select col = '45|75' union all select col = '45|16' union all select col = '45|37' union all select col = '45|18' union all select col = '45|23' union all select col = '45|22' union all select col = '45|89' union all select col = '45|69' union all select col = '45|55' union all select col = '45|42' union all select col = '45|14' union all select col = '39|29' union all select col = '39|73' union all select col = '39|48' union all select col = '39|59' union all select col = '39|38' union all select col = '39|36' union all select col = '39|87' union all select col = '39|14' union all select col = '39|54' union all select col = '39|91' union all select col = '39|17' union all select col = '39|74' union all select col = '39|76' union all select col = '39|11' union all select col = '39|62' union all select col = '39|78' union all select col = '39|16' union all select col = '39|45' union all select col = '39|69' union all select col = '39|27' union all select col = '39|75' union all select col = '39|97' union all select col = '39|84' union all select col = '31|57' union all select col = '31|48' union all select col = '31|39' union all select col = '31|11' union all select col = '31|27' union all select col = '31|74' union all select col = '31|54' union all select col = '31|66' union all select col = '31|36' union all select col = '31|91' union all select col = '31|16' union all select col = '31|78' union all select col = '31|87' union all select col = '31|45' union all select col = '31|17' union all select col = '31|76' union all select col = '31|84' union all select col = '31|69' union all select col = '31|14' union all select col = '31|29' union all select col = '31|62' union all select col = '31|73' union all select col = '29|11' union all select col = '29|87' union all select col = '29|79' union all select col = '29|25' union all select col = '29|16' union all select col = '29|36' union all select col = '29|22' union all select col = '29|48' union all select col = '29|21' union all select col = '29|62' union all select col = '29|14' union all select col = '29|69' union all select col = '29|75' union all select col = '29|55' union all select col = '29|59' union all select col = '29|76' union all select col = '29|23' union all select col = '29|52' union all select col = '29|38' union all select col = '29|27' union all select col = '29|54' union all select col = '66|14' union all select col = '66|59' union all select col = '66|69' union all select col = '66|27' union all select col = '66|75' union all select col = '66|62' union all select col = '66|84' union all select col = '66|45' union all select col = '66|17' union all select col = '66|78' union all select col = '66|76' union all select col = '66|97' union all select col = '66|87' union all select col = '66|11' union all select col = '66|16' union all select col = '66|36' union all select col = '66|73' union all select col = '66|29' union all select col = '66|48' union all select col = '66|74' union all select col = '97|27' union all select col = '97|91' union all select col = '97|29' union all select col = '97|57' union all select col = '97|78' union all select col = '97|45' union all select col = '97|54' union all select col = '97|14' union all select col = '97|48' union all select col = '97|23' union all select col = '97|69' union all select col = '97|17' union all select col = '97|36' union all select col = '97|73' union all select col = '97|74' union all select col = '97|76' union all select col = '97|84' union all select col = '97|87' union all select col = '97|75' union all select col = '87|44' union all select col = '87|85' union all select col = '87|79' union all select col = '87|55' union all select col = '87|21' union all select col = '87|23' union all select col = '87|22' union all select col = '87|65' union all select col = '87|64' union all select col = '87|42' union all select col = '87|26' union all select col = '87|68' union all select col = '87|32' union all select col = '87|52' union all select col = '87|34' union all select col = '87|89' union all select col = '87|25' union all select col = '87|37' union all select col = '25|34' union all select col = '25|21' union all select col = '25|65' union all select col = '25|42' union all select col = '25|26' union all select col = '25|13' union all select col = '25|44' union all select col = '25|79' union all select col = '25|18' union all select col = '25|68' union all select col = '25|97' union all select col = '25|89' union all select col = '25|32' union all select col = '25|37' union all select col = '25|39' union all select col = '25|74' union all select col = '25|66' union all select col = '68|32' union all select col = '68|62' union all select col = '68|45' union all select col = '68|91' union all select col = '68|29' union all select col = '68|74' union all select col = '68|54' union all select col = '68|14' union all select col = '68|69' union all select col = '68|75' union all select col = '68|84' union all select col = '68|76' union all select col = '68|17' union all select col = '68|48' union all select col = '68|97' union all select col = '68|31' union all select col = '32|69' union all select col = '32|31' union all select col = '32|11' union all select col = '32|27' union all select col = '32|66' union all select col = '32|36' union all select col = '32|97' union all select col = '32|75' union all select col = '32|76' union all select col = '32|84' union all select col = '32|91' union all select col = '32|16' union all select col = '32|57' union all select col = '32|78' union all select col = '32|62' union all select col = '17|57' union all select col = '17|23' union all select col = '17|36' union all select col = '17|69' union all select col = '17|29' union all select col = '17|73' union all select col = '17|75' union all select col = '17|62' union all select col = '17|59' union all select col = '17|48' union all select col = '17|87' union all select col = '17|84' union all select col = '17|54' union all select col = '17|52' union all select col = '34|31' union all select col = '34|57' union all select col = '34|32' union all select col = '34|85' union all select col = '34|39' union all select col = '34|37' union all select col = '34|78' union all select col = '34|17' union all select col = '34|97' union all select col = '34|44' union all select col = '34|18' union all select col = '34|89' union all select col = '34|33' union all select col = '48|52' union all select col = '48|75' union all select col = '48|21' union all select col = '48|59' union all select col = '48|18' union all select col = '48|69' union all select col = '48|73' union all select col = '48|16' union all select col = '48|62' union all select col = '48|11' union all select col = '48|45' union all select col = '48|25' union all select col = '73|52' union all select col = '73|33' union all select col = '73|16' union all select col = '73|85' union all select col = '73|89' union all select col = '73|23' union all select col = '73|87' union all select col = '73|22' union all select col = '73|38' union all select col = '73|69' union all select col = '73|37' union all select col = '52|64' union all select col = '52|31' union all select col = '52|44' union all select col = '52|33' union all select col = '52|25' union all select col = '52|97' union all select col = '52|65' union all select col = '52|89' union all select col = '52|79' union all select col = '52|37' union all select col = '74|36' union all select col = '74|76' union all select col = '74|17' union all select col = '74|11' union all select col = '74|78' union all select col = '74|14' union all select col = '74|52' union all select col = '74|45' union all select col = '74|59' union all select col = '38|26' union all select col = '38|65' union all select col = '38|31' union all select col = '38|68' union all select col = '38|93' union all select col = '38|44' union all select col = '38|25' union all select col = '38|18' union all select col = '69|13' union all select col = '69|26' union all select col = '69|25' union all select col = '69|52' union all select col = '69|42' union all select col = '69|59' union all select col = '69|64' union all select col = '11|16' union all select col = '11|73' union all select col = '11|34' union all select col = '11|55' union all select col = '11|14' union all select col = '11|79' union all select col = '33|74' union all select col = '33|14' union all select col = '33|48' union all select col = '33|76' union all select col = '33|57' union all select col = '91|14' union all select col = '91|38' union all select col = '91|73' union all select col = '91|84' union all select col = '75|55' union all select col = '75|87' union all select col = '75|16' union all select col = '59|34' union all select col = '59|64' union all select col = '26|54' 

drop table if exists #input_updates 

-- select col = '75,47,61,53,29' into #input_updates union all select col = '97,61,53,29,13' union all select col = '75,29,13' union all select col = '75,97,47,61,53' union all select col = '61,13,29' union all select col = '97,13,75,29,47' 
select col = '78,45,48,38,52,62,29' into #input_updates union all select col = '87,59,38,52,25,55,79,42,34,85,37,26,13,64,65,33,68' union all select col = '57,29,84,48,45,75,11,14,76,73,69,16,38,23,22' union all select col = '74,57,91,36,27,84,54,45,75,11,14,76,73,69,87,59,38' union all select col = '69,62,16,87,59,38,23,52,25,22,55,79,21,42,34,89,85,18,37,26,13,64,33' union all select col = '33,44,68,32,31,66,39,97,74,78,17,57,91,29,36,27,54,48,75,11,14' union all select col = '32,66,39,97,74,78,17,57,91,29,36,27,84,54,48,45,11,14,73,69,62' union all select col = '74,66,65,34,93,32,21,26,89,31,78,44,18,13,37,85,33,68,79,64,55' union all select col = '38,52,25,55,21,34,85,18,26,13,64,33,93,44,68,32,31' union all select col = '68,36,64,33,48,32,93,31,13,26,74' union all select col = '48,45,75,11,76,73,69,62,87,59,38,23,22,55,79,21,42,34,85' union all select col = '33,16,44,34,85,79,65,22,42,25,64,87,18,55,52,89,13' union all select col = '73,69,62,16,87,59,38,23,52,25,22,55,79,21,42,89,85,18,37,26,13,64,65' union all select col = '14,78,45,23,16,36,57,74,76,87,75,59,62,73,54,27,17,91,48,29,84,69,38' union all select col = '33,93,44,32,31,66,97,74,78,17,57,91,29,36,84,54,48,45,75,11,14' union all select col = '38,23,79,42,34,37,33,32,31' union all select col = '65,93,44,68,32,31,66,39,97,74,78,17,57,91,36,27,84,54,48,75,11' union all select col = '11,84,59,45,54,38,36,14,29,52,16,27,62,76,87,78,75' union all select col = '54,48,45,75,11,14,76,73,69,62,16,87,59,38,23,52,25,22,55,79,21,34,89' union all select col = '34,18,26,74,29,31,85,17,64' union all select col = '16,87,38,52,21,34,18,37,13,64,33' union all select col = '91,31,78,66,27,84,74,36,32,39,68,73,44' union all select col = '69,62,36,74,45,66,54,91,14,11,27,32,75,39,84,48,73,76,31,29,17,78,97' union all select col = '44,68,32,31,66,74,78,57,36,27,84,54,14,76,73' union all select col = '59,73,22,21,76,62,14,23,16,79,27,36,55,75,38,54,48,11,52,45,25,84,69' union all select col = '29,36,27,54,45,75,11,14,73,69,62,16,87,59,38,23,52,25,22,55,79' union all select col = '64,68,39,44,93,13,31,26,74,33,22,66,79,42,55,34,18,65,89,85,37' union all select col = '79,18,37,13,32,66,17' union all select col = '87,38,78,57,36,62,45,17,91,59,23,84,76,75,54,14,29,27,48,16,11' union all select col = '87,59,23,55,79,42,85,18,37,64,65,33,93,44,68' union all select col = '68,17,57,31,11,48,54,73,14,76,91,75,69,74,78,32,84,45,97,66,29,36,39' union all select col = '38,55,65,52,13,87,18,44,22,16,64,26,23,34,37,42,59,85,21' union all select col = '89,85,26,13,64,65,33,68,31,66,74,17,57,91,36' union all select col = '75,11,14,76,73,62,16,87,59,38,23,52,25,22,55,79,21,42,34,89,85,18,37' union all select col = '59,93,33,79,62,16,55' union all select col = '66,39,17,36,84,54,48,75,11' union all select col = '89,21,37,79,93,25,22,52,34,42,64,55,23,68,44,65,32,66,31,26,85,18,13' union all select col = '13,64,32,31,17,84,54' union all select col = '16,65,25,33,55,79,21,34,87,18,64,93,52,38,37,23,59,42,62' union all select col = '91,29,36,84,54,45,75,11,73,69,62,16,87,59,38,23,52,22,55' union all select col = '31,66,39,17,57,27,11,62,16' union all select col = '26,33,32,66,29,36,48' union all select col = '18,37,26,65,33,44,32,66,39,97,57,29,36,27,84' union all select col = '93,44,68,31,39,97,74,78,17,57,91,29,36,27,54,48,45,75,11,14,76' union all select col = '32,31,66,39,97,78,17,57,91,29,36,27,54,48,45,75,14,76,73,69,62' union all select col = '26,13,65,31,66,39,74,57,91,36,84,54,48' union all select col = '68,13,32,93,85,18,25,97,39,42,34' union all select col = '27,84,11,14,76,69,16,38,25' union all select col = '93,66,57,27,54,75,76' union all select col = '16,37,89,73,87,13,14,52,23' union all select col = '85,37,26,13,65,33,93,44,32,66,39,97,17,91,29,36,27' union all select col = '66,78,57,75,11,76,69' union all select col = '75,11,76,73,69,62,16,87,59,38,23,52,25,22,55,79,21,42,34,89,85,18,37' union all select col = '78,27,73,14,38,45,84,69,23,48,11,87,54,16,62,57,29,74,36,17,59,91,75' union all select col = '33,68,17,21,39' union all select col = '26,13,65,33,44,68,32,39,97,74,78,17,91,36,84,54,48' union all select col = '93,13,68,34,32,37,55' union all select col = '11,76,73,69,62,16,87,59,38,23,52,22,55,79,21,42,34,89,85,37,26' union all select col = '14,38,23,25,79,42,89' union all select col = '57,38,84,75,14,59,23' union all select col = '25,34,89,18,26,13,64,65,33,93,44,31,66,39,97' union all select col = '48,91,65,33,97,68,31,57,39,44,27,29,78,64,17,75,93,36,74,66,54,45,32' union all select col = '87,79,13,65,33' union all select col = '55,79,33,44,68,74,78' union all select col = '25,52,26,65,18,13,23,22,37,59,32,42,33,85,44' union all select col = '57,29,75,59,73,17,36' union all select col = '16,13,89,33,21,42,65,38,55,37,59,34,44,25,85,23,22,64,87' union all select col = '32,97,42,39,78,21,33,26,13,85,55' union all select col = '31,84,74,91,32,78,76,36,62' union all select col = '69,16,52,22,55,37,33' union all select col = '13,65,33,68,32,66,39,97,74,78,17,36,27,84,54,48,45' union all select col = '85,23,13,55,42,89,22,68,93,21,26,79,52,59,65,18,87,25,37,34,38' union all select col = '34,75,84,23,62,54,48' union all select col = '76,55,59,62,29,36,38,73,84,16,75,48,87,22,14,79,11' union all select col = '93,26,21,89,64,31,78,79,17,66,13,65,33,32,44,37,68,74,34' union all select col = '11,14,76,73,69,62,16,59,38,23,25,22,55,79,21,42,89,37,26' union all select col = '34,85,93,32,39' union all select col = '44,68,66,39,78,57,54,14,73' union all select col = '42,37,21,44,85,16,64' union all select col = '64,44,32,31,39,97,74,91,36,84,54,45,75' union all select col = '31,66,39,74,78,17,57,91,36,27,45,75,11,14,76,73,69' union all select col = '93,97,57,11,14' union all select col = '65,31,57,13,78,64,45,66,17,48,68,93,54,27,29,36,32,97,44,84,39' union all select col = '73,45,55,11,23,59,76,75,25,87,34,52,22' union all select col = '21,34,89,85,18,37,26,13,64,65,33,93,44,68,32,31,66,39,97,74,78,17,57' union all select col = '42,34,89,85,18,37,13,64,65,33,93,44,68,32,66,39,97,74,78,17,57' union all select col = '18,37,79,26,11' union all select col = '16,59,48,11,14,55,36,87,73,21,76,23,69,27,52,75,54,45,62,84,22' union all select col = '66,78,17,57,91,36,27,84,54' union all select col = '31,44,65,37,78,33,68,36,32,66,17,18,91,93,64,74,26,89,85' union all select col = '89,65,79,85,22,18,64,42,55,31,34,33,97,26,13,25,68' union all select col = '55,21,89,18,26,13,64,93,68,32,31,39,78' union all select col = '22,18,26,44,32,31,66,39,97' union all select col = '38,79,21,42,18,37,64,65,31' union all select col = '34,89,85,18,26,13,64,33,93,68,66,74,78,17,57,91,29' union all select col = '17,39,16,59,54,36,78,69,57,48,76,27,84,97,91,75,45,73,62,11,14' union all select col = '65,33,93,44,68,32,31,74,78,17,57,91,29,36,27,84,54,48,45,75,11' union all select col = '84,48,75,73,16,59,23,52,55,79,21' union all select col = '93,21,32,66,55,89,42,74,85,68,22,44,13,64,26' union all select col = '14,76,73,69,62,16,87,59,38,23,52,25,22,55,21,42,34,89,85,18,37,26,13' union all select col = '32,74,78,27,84,45,11' union all select col = '65,26,44,74,36,78,89,31,66,32,29,13,57' union all select col = '89,85,26,93,68,32,31,17,57,91,29' union all select col = '59,38,23,52,25,22,55,79,21,42,34,89,85,18,26,13,64,65,33,93,44,68,32' union all select col = '31,66,39,74,17,91,29,36,27,84,54,48,45,75,11,76,73,62,16' union all select col = '59,91,75,11,84' union all select col = '91,29,36,11,69,62,16,87,25,22,55' union all select col = '91,97,39,29,57,32,73,78,48,11,84,75,45,76,27,36,69,31,68,66,74,14,17' union all select col = '33,93,44,85,22,26,64,31,32,65,52,66,34,55,68,39,37,42,18' union all select col = '23,37,26,42,34,65,18,21,68,79,33,31,66,89,52,22,25,93,32' union all select col = '55,79,89,13,32,31,78' union all select col = '84,48,45,14,69,87,38' union all select col = '91,29,36,27,84,54,45,75,76,73,62,87,59,38,23,52,25,22,55' union all select col = '37,33,18,66,34,64,32,89,26,79,85,25,68,39,52,44,21' union all select col = '76,73,87,22,79,21,26,13,64' union all select col = '75,11,14,76,73,62,16,87,22,21,42,34,89,85,37' union all select col = '52,25,22,55,79,21,42,34,85,18,37,26,13,65,33,93,44,68,31,66,39' union all select col = '65,22,33,79,13,68,32,42,37,44,26,25,64,85,18,93,66,89,39' union all select col = '73,23,34,85,37,26,65' union all select col = '45,75,11,14,76,73,69,62,16,87,59,38,23,52,25,22,55,79,21,42,34,89,85' union all select col = '14,59,69,87,26,13,34' union all select col = '42,34,89,26,64,65,44,31,66,39,78,17,91' union all select col = '18,37,26,13,93,32,31,66,97,78,57,29,36' union all select col = '42,34,23,11,79,45,75,52,55,73,38,54,22,25,87' union all select col = '85,34,68,65,33,21,37,26,93,89,22,79,38,52,55,44,87,42,23,13,18' union all select col = '75,48,22,73,27,45,57' union all select col = '14,76,73,69,16,59,38,52,22,55,79,21,34,89,18,37,13' union all select col = '26,32,48,36,91,33,65,93,66' union all select col = '36,39,84,13,17,57,26,32,65,54,93,37,97,78,31' union all select col = '42,87,34,73,13,14,85' union all select col = '66,13,37,17,91,31,57,65,27,78,84,97,68,54,39' union all select col = '42,39,97,68,25,26,79,18,21,85,44,34,65,89,93,37,55,31,22' union all select col = '18,34,55,37,64,44,21' union all select col = '23,52,84,87,57,38,76,27,69,22,48,62,16' union all select col = '26,93,29,44,54,33,31,13,66,65,84,78,64,27,74,39,37' union all select col = '37,18,57,13,17,29,31,32,36,93,26' union all select col = '27,87,76,29,78,48,17' union all select col = '32,31,66,39,78,57,91,29,48,75,76,73,62' union all select col = '59,38,55,79,21,89,85,65,33,44,32' union all select col = '27,54,17,64,45,39,97,84,36,65,44,32,74' union all select col = '87,38,23,52,22,21,42,34,89,37,13,65,33,93,68' union all select col = '66,31,22,32,55,13,42,37,18,68,21,79,89,23,85,44,33,34,25' union all select col = '93,74,39,78,17,18,64,57,13,31,33,29,36,37,84,26,32,65,27,66,97,91,44' union all select col = '97,18,33,31,13,93,84,44,26' union all select col = '62,73,48,27,45,54,36,97,16,84,57,76,11,69,78,91,87,59,39,29,17,74,14' union all select col = '29,31,14,39,45,11,84,16,57,27,73' union all select col = '66,39,29,69,87' union all select col = '69,74,59,84,48,73,16,87,62,97,75,76,54,38,45,29,17,36,14,91,27' union all select col = '18,64,65,33,93,44,68,32,31,66,39,97,74,78,17,57,91,29,36,27,84' union all select col = '48,45,73,79,42,34,85' union all select col = '75,11,76,69,62,16,87,59,23,22,55,79,21,34,85' union all select col = '93,22,26,64,33,23,52,65,87,18,25,44,55,38,37,21,42,68,85,13,79,89,59' union all select col = '76,69,87,59,23,52,25,79,42,34,37,13,64' union all select col = '22,37,13,38,69,18,55,21,52,14,62,34,25,23,16,73,59,85,89' union all select col = '79,55,62,73,85,87,26,13,69,42,76,37,64,38,16,21,23,52,25,18,59,34,22' union all select col = '22,21,85,18,26,93,32,66,39,97,74' union all select col = '14,57,11,17,74,29,87' union all select col = '64,65,33,31,74,78,27,84,54,48,75' union all select col = '85,66,68,23,21,32,93' union all select col = '85,89,93,74,65,26,64,78,79,33,66,39,55' union all select col = '57,29,27,54,45,11,76,16,87,59,52,25,22' union all select col = '32,31,97,17,57,29,36,27,84,48,45,75,62' union all select col = '69,91,76,75,14,36,97,54,11,74,62,17,29,45,27' union all select col = '48,45,73,62,16,59,38,23,55,89,85' union all select col = '37,26,13,65,33,93,44,68,32,31,74,78,17,91,29,27,84' union all select col = '33,65,89,37,69,38,18,79,87,52,16,23,34,59,21,62,26,42,55' union all select col = '74,17,91,27,84,54,48,45,75,11,14,76,73,69,62,16,87' union all select col = '66,39,74,78,91,36,27,84,54,48,45,75,11,14,69,16,87' union all select col = '85,25,13,55,21,64,93,38,62,79,65,23,37' union all select col = '44,36,33,68,29,32,13,65,97,39,27' union all select col = '16,22,38,14,62,11,52' union all select col = '45,36,93,68,14,33,44,32,48' union all select col = '93,57,45,97,75,78,27,76,14' union all select col = '62,23,65,33,22,34,13,21,69,79,87' union all select col = '22,69,14,16,52,79,73,11,37' union all select col = '66,68,26,13,39,34,52,85,32,64,33' union all select col = '64,33,44,68,39,74,78,17,57' union all select col = '37,21,73,25,38,55,62,59,34,87,79,89,64' union all select col = '84,59,73,74,75,17,91,78,23' union all select col = '78,45,74,17,84,27,91,29,14' union all select col = '54,45,44,27,17,39,75,31,57,64,48' union all select col = '25,84,23,45,57,69,91,76,87,17,27,73,62,29,54,52,11' union all select col = '97,91,29,84,45,75,11,14,76,59,38' union all select col = '17,57,91,36,27,84,48,45,11,76,73,69,62,16,59,38,23,52,25' union all select col = '21,42,89,85,18,37,26,13,64,65,33,44,68,32,66,39,97,74,78,17,57' union all select col = '34,21,93,23,65,52,37,32,26,25,22' union all select col = '21,89,87,59,16,62,26,76,55,23,11,14,25,69,42,85,79,34,38,22,37' union all select col = '27,54,11,14,62,87,59,38,52,25,22,55,79' union all select col = '42,34,89,85,18,37,26,13,64,65,33,93,44,68,32,31,66,39,97,74,78,17,91' union all select col = '23,25,22,55,34,89,65,93,32' union all select col = '68,13,38,32,18,26,93,89,52,85,22,42,44,65,25,34,21,59,33' union all select col = '57,91,29,36,27,84,54,48,45,75,14,76,73,69,62,16,87,59,38,23,52,25,22' union all select col = '91,29,27,14,16,52,25,22,55' union all select col = '97,26,13,79,66,37,64,42,31,55,65,85,39,44,22,18,68,34,93,33,32' union all select col = '87,11,17,27,36,14,29,76,75,69,78,74,59,91,38,48,62,73,16,57,23' union all select col = '42,89,85,18,64,65,33,93,66,97,74,78,91' union all select col = '75,11,14,76,73,69,62,16,87,59,38,23,52,25,22,55,79,21,42,34,89,18,37' union all select col = '26,64,65,33,93,44,68,32,31,66,39,78,17,57,91,29,36,27,84,54,48' union all select col = '38,23,22,55,42,34,89,37,26,33,93' union all select col = '29,18,34,13,89,17,39,37,26' union all select col = '76,73,69,62,16,87,59,38,23,52,25,22,55,79,42,34,89,85,18,37,26,13,64' union all select col = '68,89,32,17,85,42,74,33,65,18,34,37,31,79,44' union all select col = '23,21,73,18,42,22,34,14,79,59,69,45,25,52,87,55,75' union all select col = '75,11,14,73,69,62,16,87,59,38,23,52,25,22,55,21,42,34,85,18,37' union all select col = '31,26,17,39,97,36,13,65,89,29,64' union all select col = '39,97,74,17,91,29,36,27,84,54,45,11,14,76,73,69,62,87,59' union all select col = '65,44,32,66,97,78,57,91,36,27,54,48,45,75,11' union all select col = '31,74,78,57,29,84,45,75,62' union all select col = '52,25,22,55,79,21,42,34,89,85,18,37,13,65,33,44,68,32,31,66,39' union all select col = '21,62,18,25,69,55,26,65,85,79,33,34,89,42,13,59,22,87,38' union all select col = '91,29,27,69,38,25,55' union all select col = '27,84,48,75,11,76,73,69,62,16,87,59,38,23,52,25,55,21,42' union all select col = '34,32,37,55,44,52,22,42,23,26,66,85,25' union all select col = '65,33,93,44,68,32,66,39,97,74,78,17,57,29,36,84,54,48,45,75,11' 

drop table if exists #pr

select 
A = left(col, CHARINDEX('|', col)-1)
,B = right(col, len(col) - CHARINDEX('|', col))
into #pr 
from #input_priority 

drop table if exists #brk 

drop table if exists #base

select
grp_ID = ROW_NUMBER() over(order by col)
, col = col + ',' -- this is to make split easier 
into #base 
from #input_updates


; with cte AS (
    select 
        grp_ID 
        , pos = 1 
        , curr_number = cast(left(col, CHARINDEX(',', col)-1) as int)
        , rem = right(col, len(col) - CHARINDEX(',', col)) 
    from #base
    union all 
    select 
        grp_ID 
        , pos + 1 
        , cast( left(rem, CHARINDEX(',', rem)-1) as int)
        , right(rem, len(rem) - CHARINDEX(',', rem))
    from 
    cte 
    where len(rem) > 0
)
select *
, group_cnt = count(*) over(partition by grp_ID) 
into #brk from cte 
OPTION(maxrecursion 0 )

drop table if exists #good_groups

; 
with group_cnt as
(
    select 
    grp_ID
    , cnt = count(*)
    from #brk 
    group by grp_ID
)
select 
grp_ID
, good_cnt = count(*) -- the good number count from curr_numberent group
into #good_groups
from #brk curr 
where not exists 
 (select * from #brk nxt where curr.grp_ID = nxt.grp_ID and nxt.pos > curr.pos
                               and not exists 
                               (
                                select * from #pr pr 
                                where pr.A = curr.curr_number 
                                and pr.B = nxt.curr_number
                               )
 )
group by grp_ID 
having count(*) = (select cnt from group_cnt gc where gc.grp_ID = curr.grp_ID) -- good count should be same as the total count




-- select *  from #brk
-- where grp_ID in (select grp_ID from #good_groups)
-- order by grp_ID, pos
 


select res = sum(curr_number)
from (
    select grp_ID,  curr_number  from #brk
    where grp_ID in (select grp_ID from #good_groups)
    and pos  = (group_cnt / 2 ) + 1  -- this is the middle number
) rpt 


--Q2

-- Idea is to have the topological sorting on the priority list 
-- sort the updating list based on the topological sorting
-- The one with most dependencies will be sort as first one
-- For the one without dependencies or not even in the pro list, will be sorted as 999999 


-- check the layer of each node, and sort the nodes based on the layer count desc.
-- The one on the deepest layer, is the one sorted first

drop table if exists  #Q2_base

select
grp_ID
, pos
, curr_number
, group_cnt
into #Q2_base
from #brk where grp_ID not in (select grp_ID from #good_groups)


drop table if exists #grp_pr 

-- to find the priority list pertaining to each group
select 
A.grp_ID
,  pr.* 
into #grp_pr
from #pr pr
left outer join #Q2_base A on pr.A = a.curr_number
left outer join #Q2_base B on pr.B = b.curr_number
where A.grp_ID = B.grp_ID 


create index idx_1 on #grp_pr(grp_id, A, B)

drop table if exists #node_level 


;with cte as 
( 
    select grp_id
        , lvl = 1
        -- , path = cast(A as varchar(max))
        , A
        , B
        , og = A from #grp_pr 
         -- where grp_ID = 3
    union all 
    select 
        prev.grp_ID
        , prev.lvl+1
       -- , path +' --> ' + cast(curr.A as varchar(max))
        , curr.A
        , curr.B
        , prev.og 
    from cte prev inner join #grp_pr curr
    on prev.B = curr.A and prev.grp_id = curr.grp_ID
)   
select 
grp_id
, node = og
, lvl_number = max(lvl) 
, sorting_number = ROW_NUMBER()over (order by max(lvl) desc) -- this is the sorting for the node 
into #sorting
from cte
group by grp_id, og


-- select 
-- * 
-- -- count(*) 
-- into #node_level 
-- from cte 
-- OPTION(maxrecursion 0 )



-- drop table if exists #sorting

-- select 
-- grp_id
-- , node = og
-- , lvl_number = max(lvl) 
-- , sorting_number = ROW_NUMBER()over (order by max(lvl) desc) -- this is the sorting for the node 
-- into #sorting
-- from #node_level
-- group by grp_id, og



drop table if exists #Q2_rpt

select 
b.*
, s.sorting_number
, correct_sort = ROW_NUMBER() over (partition by b.grp_id 
                                    order by case when s.sorting_number is null then 99999999 -- not on the list.so it's irrelevant where to put them
                                                  else s.sorting_number 
                                              end
                                    )  
into #Q2_rpt 
from #Q2_base b 
left outer join #sorting s on b.curr_number = s.node and b.grp_ID = s.grp_ID
-- where grp_ID not in (select grp_ID from #good_groups) -- filter out the good groups from Q1





-- select * from #Q2_rpt
-- 4719 
select res = sum(curr_number) from #Q2_rpt 
where correct_sort = (group_cnt / 2) + 1






-- ; with cte 
-- as (
--     SELECT 
--         grp_ID , 
--         0 AS correction_step, 
--         pos, 
--         curr_number
--     FROM #Q2_base
--     UNION ALL
--     SELECT 
--         tmp.grp_ID, 
--         tmp.correction_step + 1, 
--         tmp.pos, 
--         CASE 
--             WHEN tmp.pos = to_swap.position_a THEN to_swap.page_b
--             WHEN tmp.pos = to_swap.position_b THEN to_swap.page_a
--             ELSE tmp.curr_number 
--         END
--     FROM cte tmp
--     inner JOIN (
--         SELECT 
--             u1.grp_ID, 
--             position_a = u1.pos , 
--             u1.curr_number AS page_a, 
--             position_b = u2.pos, 
--             u2.curr_number AS page_b,
--             swap_priority = ROW_NUMBER() OVER (PARTITION BY u1.grp_id ORDER BY u1.pos, u2.pos) 
--         FROM cte u1
--         inner JOIN cte u2 ON u1.grp_ID = u2.grp_ID
--         inner JOIN #pr r ON r.a = u1.curr_number AND r.b = u2.curr_number
--         WHERE u1.pos < u2.pos
--     ) to_swap ON tmp.grp_ID = to_swap.grp_ID AND to_swap.swap_priority = 1

-- )
 

/* 







Other solution https://github.com/neumannt/aoc24/blob/master/day05.sql#L49  --- 

lines(y,line) as (
   select 0, substr(i,1,position(E'\n' in i)-1), substr(i,position(E'\n' in i)+1)
   from aoc5_input
   union all
   select y+1,substr(r,1,position(E'\n' in r)-1), substr(r,position(E'\n' in r)+1)
   from lines l(y,l,r) where position(E'\n' in r)>0
),
rules(b, a) as (
   select substr(line,1,position('|' in line)-1)::integer as a, substr(line,position('|' in line)+1)::integer as b
   from lines where line like '%|%'
),
updates(y,x,v) as (
   select y, 0 as x, substr(line,1,position(',' in line)-1)::integer as v, substr(line,position(',' in line)+1) as r
   from lines where line like '%,%'
   union all
   select y, x+1, case when r like '%,%' then substr(r,1,position(',' in r)-1) else r end::integer, case when r like '%,%' then substr(r,position(',' in r)+1) else '' end
   from updates where r<>''
) ,
violations(y) as (
   select distinct u1.y
   from updates u1, updates u2, rules r
   where u1.y=u2.y and u1.x<u2.x and r.b=u2.v and r.a=u1.v
),
correct(y,x,v) as (select * from updates where y not in (select y from violations)),
part1(v) as (
   select sum(v)
   from correct c natural join (select y, percentile_disc(0.5) WITHIN GROUP (ORDER BY x) as x from correct group by y) s
),
rawcorrected(y,step,x,v) as (
   select y,0,x,v from updates where y in (select y from violations)
   union all    
   (with tmp as (select * from rawcorrected),
    rawtoswap as (select o1.y as y, o1.x as x1, o1.v as v1
                        , o2.x as x2, o2.v as v2, row_number() over (partition by o1.y order by o1.x, o2.x) as r
                    from tmp o1, tmp o2, rules r 
                    where o1.y=o2.y 
                        and o1.x<o2.x 
                        and r.b=o1.v 
                        and r.a=o2.v
                ),
    toswap as (select y, x1, v1, x2, v2 from rawtoswap where r=1)
    select y, step+1, x, case when x=x1 then v2 when x=x2 then v1 else v end
    from tmp natural join toswap
    
    )
),
corrected(y,x,v) as (select y,x,v from rawcorrected c1 where step=(select max(step) from rawcorrected c2 where c2.y=c1.y)),
part2(v) as (
   select sum(v)
   from corrected c natural join (select y, percentile_disc(0.5) WITHIN GROUP (ORDER BY x) as x from corrected group by y) s
)
select (select v from part1) as part1,
       (select v from part2) as part2 */