# Formulas for Mystic Class Characters

## Mystic = An optional character class. Monastic humans who follow a strict discipline of meditation, denial, seclusion, and mastery of the human body. Mystics are skilled in unarmed combat.

## THAC0
`if(level<31,round(-1.899*ceil(level/3)+20.49),round(-1*ceil(level/3)+13))`

*See RC page 106 and 267*

## Saving Throw: Death Ray or Poison
`round(0.000145*ceil(level/3)^5-0.004346*ceil(level/3)^4+0.031667*ceil(level/3)^3+0.150829*ceil(level/3)^2-2.890869*ceil(level/3)+14.49)`

*See RC pages 30 and 109*

## Saving Throw: Magic Wands
`round(-0.012529*ceil(level/3)^3+0.309441*ceil(level/3)^2-3.013944*ceil(level/3)+15.398352)`

*See RC pages 30 and 109*

## Saving Throw: Paralysis or Turn to Stone
`round(-0.011946*ceil(level/3)^3+0.293457*ceil(level/3)^2-2.993049*ceil(level/3)+16.414835)`

*See RC pages 30 and 109*

## Saving Throw: Breath Attack
`round(-0.003788*ceil(level/3)^3+0.139111*ceil(level/3)^2-2.407301*ceil(level/3)+17.107143)`

*See RC pages 30 and 109*

## Saving Throw: Rod, Staff, or Spell
`round(-0.001782698*ceil(level/3)^3+0.088913492*ceil(level/3)^2-2.077130794*ceil(level/3)+17.49)`

*See RC pages 30 and 109*

## XP by Level
`if(level>7,120000*level-840000,1000*round(-0.00009253711978*level^8+0.00214909557889*level^7-0.01742252687057*level^6+0.05573352590168*level^5-0.01017396488955*level^4-0.026319955683*level^3-1.15566942864673*level^2+4.92439916598304*level-3.77260337425398))`

*See RC page 29 and 266*
