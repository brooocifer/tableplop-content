# Formulas for Cleric Class Characters

## THAC0
`if(level<36,round(-1.919473684211*ceil(x/4)+20.49),2)`

*See RC page 106*

## Saving Throw: Death Ray or Poison
`max(2,round(0.098485*ceil(level/4)^2-2.101515*ceil(level/4)+12.833333))`

*See RC pages 14 and 109*

## Saving Throw: Magic Wands 
`max(2,round(0.069397*ceil(level/4)^2-1.872622*ceil(level/4)+13.483297))`

*See RC pages 14 and 109*

## Saving Throw: Paralysis or Turn to Stone
`max(2,round(0.108225*ceil(level/4)^2-2.582251*ceil(level/4)+16.595238))`

*See RC pages 14 and 109*

## Saving Throw: Dragon Breath 
`max(2,round(0.069397*ceil(level/4)^2-2.515309*ceil(level/4)+18.696731))`

*See RC pages 14 and 109*

## Saving Throw: Rod, Staff or Spell
`max(2,round(0.097403*ceil(level/4)^2-2.640693*ceil(level/4)+17.785714))`

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
`if(level<34,max(0,round(0.000000000364712111*level^8-0.0000000334762649*level^7+0.000000751363626425*level^6+0.000014657632447817*level^5-0.000797759824530925*level^4+0.00956894469145632*level^3-0.0283731277721411*level^2+0.383768752871907*level-1.47210605669151)),9)`

*See RC page 14*

## 4th Level Cleric User Spells
`if(level<35,round(if(level % 2,-0.00000000412405828804*level^8+0.00000059443365411807*level^7-0.0000349875662627603*level^6+0.00107798701628328*level^5-0.0184603367598047*level^4+0.170739654204282*level^3-0.745972371288857*level^2+1.28072909707652*level-0.630133217055266,-0.0000000023499*level^8+0.00000036853516*level^7-0.00002360852208*level^6+0.00079218642935*level^5-0.01481016129441*level^4+0.15085963308063*level^3-0.75052958786084*level^2+1.64718792717418*level-1.26454291756812)),9)`

*See RC page 14*

## 5th Level Cleric User Spells
`if(level<35,round(-0.00000000096141*level^8+0.0000001711215*level^7-0.00001250774547*level^6+0.00048167385055*level^5-0.01039624685982*level^4+0.1228003525783*level^3-0.70396324386476*level^2+1.63614906384632*level-1.09831375795249),9)`

*See RC page 14*

## 6th Level Cleric User Spells
`if(level<36,max(0,min(9,round(0.0000000011391434*level^8-0.000000103015731*level^7+0.0000013139558879*level^6+0.0001598680793381*level^5-0.0077174548513549*level^4+0.145506098603832*level^3-1.27783628345122*level^2+4.95546817190931*level-6.39068774283907))),9)`

*See RC page 14*

## 7th Level Cleric User Spells
`if(level<36,round(0.00000000032606*level^8-0.00000008897457*level^7+0.00000825616794*level^6-0.00036656278123*level^5+0.00857531604651*level^4-0.10551810847186*level^3+0.6427123495*level^2-1.67443535139322*level+1.29380965503312),9)`

*See RC page 14*

## Cleric Turn Undead

*See RC page 15*

This table has some special values that are not numeric:
- &#45; = turning not possible
- T = automatic turn of 2d6 HD of undead
- D = automatic destroy of 2d6 HD of undead
- D+ = automatic destroy of 3d6 HD of undead
- D# = automatic destroy of 4d6 HD of undead

For the "not possible" entries, since the roll to turn undead is a 2d6 roll, we only need to make sure that the function result is 13 or higher, as the maximum value of a 2d6 roll is 12, resulting in an impossible scenario. Note that in the rules, there are no modifiers possible on these rolls.

For the "destroy" scenarios, we are representing the function result as negative numbers. To use these in scripting in a VTT, spreadsheet, etc., simply determine if the value is < 0, in which case use ABS(value) to determine how many HD of undead to automatically destroy. Therefore D=-2, D+ =-3, and D#=-4.

For the output of the formula for "T", we need to ensure that the function result is a value between 0 and 2, since the negative results are used for destroying undead, and a 2d6 roll will always be greater than these numbers). 

### Turn Undead: Skeleton
Determining a single function for this row of the table was difficult, I chose to represent the positive and negative results as two separate functions, determined in the function only by the level of the Cleric (1-3 and 4+ in this row). This is a useful tactic for all of the rows in this table.

`round(if(level>3,0.000804*level^2-0.104242*level-1.451177,2.5*level^2-12.5*level+17))`

### Turn Undead: Zombie

`round(if(level>4,-0.000022*level^2-0.065104*level-1.649951,1.333333*level^3-9.5*level^2+17.166667*level))`

### Turn Undead: Ghoul

`round(if(level>5,0.000276*level^2-0.071221*level-1.493846,0.111587*level^5-1.215464*level^4+4.40152*level^3-6.065299*level^2+0.158038*level+13.609618))`

### Turn Undead: Wight

`round(if(level>6,0.002252*level^2-0.143016*level-0.778166,0.063844*level^5-0.81855*level^4+2.979175*level^3+0.012064*level^2-18.930048*levelx+36.032217))`

### Turn Undead: Wraith

`round(if(level>7,0.000764*level^2-0.085094*level-1.093584,0.051211*level^5-0.821954*level^4+3.796812*level^3+0.368181*level^2-41.213591*level+82.947077))`

### Turn Undead: Mummy

`round(if(level>8,-0.05045*level-1.238761,0.044214*level^5-0.8681*level^4+5.112792*level^3-1.982218*level^2-68.606053*level+166.878984))`

### Turn Undead: Spectre

`round(if(level>10,-0.044242*level-1.216985,-0.2*level^5+7.458333*level^4-109.416667*level^3+789.041667*level^2-2798.883333*level+3920))`

### Turn Undead: Vampire

`round(if(level>12,-0.038155*level-1.250874,0.0583333333*level^6-3.1749999995*level^5+71.1666666563*level^4-840.3749998781*level^3+5511.2749992028*level^2-19027.9499972535*level+27028.9999961051))`

### Turn Undead: Phantom

`if(level<7,13,if(level>14,-2,round(0.0218253968*level^7-1.6083333333*level^6+50.336111111*level^5-867.0833333267*level^4+8876.4444443244*level^3-53991.3083322857*level^2+180639.197614481*level-256396.999992025)))`

### Turn Undead: Haunt

`if(level>16,-2,round(0.0054316045*level^8-0.5209380068*level^7+21.699186434*level^6-512.6540094444*level^5+7512.6370649388*level^4-69919.5563231843*level^3+403552.010760963*level^2-1320500.02061728*level+1875427.92901219))`

### Turn Undead: Spirit

`if(level>20,-2,if(level>14,2,round(0.0008443837*level^8-0.0551766519*level^7+1.4673998363*level^6-19.990151032*level^5+140.3994532043*level^4-390.9630600777*level^3-493.868589008*level^2+3321.9286745717*level+2090.5122175328)))`

### Turn Undead: Nightshade

`if(level<11,13,if(level>24,-2,if(level>16,2,round(0.0000544076*level^8-0.0036686306*level^7+0.098388791*level^6-1.3110457712*level^5+8.6817036285*level^4-23.1867082309*level^3+6.5446004953*level^2-30.1807496759*level-24.2635859127))))`

### Turn Undead: Lich

`if(level<13,13,if(level>20,2,round(0.0005629916*level^8-0.0639974306*level^7+3.0826398489*level^6-81.1245846808*level^5+1245.135407492*level^4-10803.4969967839*level^3+43300.5366928357*level^2+6655.4281389154*level-433158.772746434)))`

### Turn Undead: Special

`if(level>24,2,round(0.00019833648299*level^8-0.03056700049126*level^7+2.05098769021932*level^6-78.2481676292929*level^5+1856.37485586605*level^4-28041.6837651283*level^3+263367.303456271*level^2-1406047.30062852*level+3266797.38479167))`
