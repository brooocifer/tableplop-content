# Formulas for Halfling Class Characters

## THAC0
`if(level<10,round(-1.899*ceil(level/3)+20.49),if(level>35,2,round(-1.919473684211*ceil(level/4)+20.49)))`

*See RC page 106 and 266*

## Saving Throw: Death Ray or Poison
`max(2,round(-3*ceil(level/3)+11))`

*See RC pages 27, 109, 266 and 267*

## Saving Throw: Magic Wands
`max(3,round(-3*ceil(level/3)+12))`

*See RC pages 27, 109, 266 and 267*

## Saving Throw: Paralysis or Turn to Stone
`max(4,round(-3*ceil(level/3)+13))`

*See RC pages 27, 109, 266 and 267*

## Saving Throw: Dragon Breath
`max(5,round(-4*ceil(level/3)+17))`

*See RC pages 27, 109, 266 and 267*

## Saving Throw: Rod, Staff or Spell
`max(4,round(-4*ceil(level/3)+16))`

*See RC pages 27, 109, 266 and 267*

## XP by Level
`if(level>18,200000*level-600000,if(level>8,300000*level-2400000,if(level>7,120000,1000*round(0.016666667*level^5-0.25*level^4+1.75*level^3-5.75*level^2+10.23333333*level-6))))`

*See RC page 27 and 266*
