# Formulas for Magic-User Class Characters

## THAC0
`round(-1.899*ceil(level/5)+20.49)`

*See RC page 106*

Death Ray/Poison Saving Throw
=IF(x<21,ROUND(-2*CEILING(x/5)+15),ROUND(-1*CEILING(x/4)+11))
Magic Wands Saving Throw
=IF(x<21,ROUND(-2*CEILING(x/5)+16),ROUND(-1.3*CEILING(x/4)+13.5))
Paralysis/Turn to Stone Saving Throw
=IF(x<21,ROUND(-2*CEILING(x/5)+15),ROUND(-1*CEILING(x/4)+11))
Breath Attack Saving Throw
=IF(x<21,ROUND(-2*CEILING(x/5)+18),ROUND(-2*CEILING(x/4)+20))
Rod/Staff/Spell Saving Throw
=IF(x<21,ROUND(-3*CEILING(x/5)+18),ROUND(-0.7*CEILING(x/4)+8))



Magic User Experience Table
=IF(x>7,150000*x-1050000,100*ROUND(0.208333*x^5-3.125*x^4+21.875*x^3-71.875*x^2+127.916667*x-75))




