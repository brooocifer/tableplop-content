# Curve fitting for Old School D&D Tables

Rather than store Old School D&D tables from the original books, use a curve fitting tool (like https://planetcalc.com/8735/) to discover the function that best represents each table row or column. This also allows for instant updates of values via the use of formulas.

Note also that math cannot be copyrighted, so original publishers should not be able to claim copyright of a table. 

For example:

## THAC0 for Monsters
`round (0.0000000007360403*hd_for_thaco_calc^8-0.0000001131926854*hd_for_thaco_calc^7+0.0000067486249053*hd_for_thaco_calc^6-0.0001958667110075*hd_for_thaco_calc^5+0.0028018455396813*hd_for_thaco_calc^4-0.0166731418019406*hd_for_thaco_calc^3+0.0268407902579332*hd_for_thaco_calc^2-0.970892261437263*hd_for_thaco_calc+19.9733537305618)`

Note: The HD for THAC0 calculation = Hit Dice + 1 if there is a positive Hit Dice Modifier value (ex: for HD 5+2, the HD for THAC0 = 6)

...which results in the following:

| Creature's HD | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 36 | 35 | 36 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| THAC0 | 20 | 19 | 18 | 17 | 16 | 15 | 14 | 13 | 12 | 11 | 10 | 10 | 9 | 9 | 8 | 8 | 7 | 7 | 6 | 6 | 5 | 5 | 4 | 4 | 3 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 1 |

*See RC pages 8, 9, 107 and 108*
