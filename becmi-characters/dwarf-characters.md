# Formulas for Dwarf Class Characters

## THAC0
`if(level<31,round(-1.899*ceil(level/3)+20.49),round(-1*ceil(level/3)+13))`

*See RC page 106 and 266*

## Saving Throw: Death Ray or Poison
`max(2,round(-2*ceil(level/3)+10))`

*See RC page 24, 109, 266 and 267*

## Saving Throw: Magic Wands
`max(3,round(-2*ceil(level/3)+11))`

*See RC page 24, 109, 266 and 267*

## Saving Throw: Paralysis or Turn to Stone
`max(4,round(-2*ceil(level/3)+12))`

*See RC page 24, 109, 266 and 267*

## Saving Throw: Dragon Breath
`max(4,round(-3*ceil(level/3)+16))`

*See RC page 24, 109, 266 and 267*

## Saving Throw: Rod, Staff or Spell
`max(3,round(-3*ceil(level/3)+15))`

*See RC page 24, 109, 266 and 267*

## XP by Level
`if(level>12,200000*level-1800000,if(level>7,130000*level-900000,round(-11.3888888889*level^6+280.8333333333*level^5-2643.0555555553*level^4+12529.1666666654*level^3-30945.5555555525*level^2+38989.9999999964*level-18199.9999999984)))`

*See RC page 24 and 266*
