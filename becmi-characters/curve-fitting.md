# Curve fitting for Old School D&D Tables

Rather than store Old School D&D tables from the original books, use a curve fitting tool (like https://planetcalc.com/8735/) to discover the function that best represents each table row or column. This also allows for instant updates of values via the use of formulas.

Note also that math cannot be copyrighted, so original publishers should not be able to claim copyright of a table. 

For example:

## Ability Score Bonuses/Penalties
`round(0.00003175359*ability-score^5-0.001667064*ability-score^4+0.03564341*ability-score^3-0.3875923*ability-score^2+2.396571*ability-score-7.483032)`

...which results in the following:

| Ability Score | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Bonus/Penalty | -3 | -2 | -2 | -1 | -1 | -1 | 0 | 0 | 0 | 0 | 1 | 1 | 1 | 2 | 2 | 3 |

*See RC page 9*

For tableplop expr-eval, and to handle boundaries:

`if(ability-score<19,max(-3,round((-7.483032)+(2.396571*ability-score)-(0.3875923*(ability-score^2))+(0.03564341*(ability-score^3))-(0.001667064*(ability-score^4))+(0.00003175359*(ability-score^5)))),3)`
