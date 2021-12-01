# Formulas for Cleric Class Characters

## THAC0
`if(level<36,round(-1.919473684211*ceil(x/4)+20.49),2)`

*See RC page 106*

## Saving Throw: Death Ray or Poison
`max(2,round(0.098485*ceil(level/4)^2-2.101515*ceil(x/4)+12.833333))`

*See RC pages 14 and 109*

## Saving Throw: Magic Wands 
`max(2,round(0.069397*ceil(level/4)^2-1.872622*ceil(level/4)+13.483297))`

*See RC pages 14 and 109*

## Saving Throw: Paralysis or Turn to Stone
`max(2,round(0.108225*ceil(level/4)^2-2.582251*ceil(x/4)+16.595238))`

*See RC pages 14 and 109*

## Saving Throw: Dragon Breath 
`max(2,round(0.069397*ceil(level/4)^2-2.515309*ceil(level/4)+18.696731))`

*See RC pages 14 and 109*

## Saving Throw: Rod, Staff or Spell
`max(2,round(0.097403*ceil(level/4)^2-2.640693*ceil(level/4)+17.785714)`

*See RC pages 14 and 109*

## XP by Level
`if(level>7,100000*level-700000,100*round(-0.055556*level^6+1.375*level^5-12.847222*level^4+61.041667*level^3-152.097222*level^2+197.583333*level-95))`

*See RC page 14*

## 1st Level Cleric User Spells
`if(level<32,round(0.000000007581*level^7-0.000001203698*level^6+0.000076079056*level^5-0.002430497581*level^4+0.041070990538*level^3-0.354213229428*level^2+1.704725602748*level-1.271352152691),9)`

*See RC page 14*

## 2nd Level Cleric User Spells
`if(level<33,max(0,round(0.00000000213078*level^8-0.00000030652205*level^7+0.00001805385048*level^6-0.00056122143108*level^5+0.00989323893182*level^4-0.0984488901955*level^3+0.50299308517936*level^2-0.57331345643666*level-0.58058265827352)),9)`

*See RC page 14*

## 3rd Level Cleric User Spells
`if(level<34,,9)`

*See RC page 14*

## 4th Level Cleric User Spells
`if(level<34,,9)`

*See RC page 14*

## 5th Level Cleric User Spells
`if(level<35,,9)`

*See RC page 14*

## 6th Level Cleric User Spells
`if(level<35,,9)`

*See RC page 14*

## 7th Level Clericc User Spells
`if(level<36,,9)`

*See RC page 14*
