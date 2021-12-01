# Formulas for Druid Class Characters

## Druid = a Neutral Cleric of Levels 9-29 who chooses to study nature instead of remaining among "civilized" areas can convert to a Druid Class

## THAC0
`if(level<36,round(-1.919473684211*ceil(level/4)+20.49),2)`

*See RC page 106*

## Saving Throw: Death Ray or Poison
`max(2,round(0.098485*ceil(level/4)^2-2.101515*ceil(x/4)+12.833333))`

*See RC pages 29 and 109*

## Saving Throw: Magic Wands 
`max(2,round(0.069397*ceil(level/4)^2-1.872622*ceil(level/4)+13.483297))`

*See RC pages 29 and 109*

## Saving Throw: Paralysis or Turn to Stone
`max(2,round(0.108225*ceil(level/4)^2-2.582251*ceil(x/4)+16.595238))`

*See RC pages 29 and 109*

## Saving Throw: Dragon Breath 
`max(2,round(0.069397*ceil(level/4)^2-2.515309*ceil(level/4)+18.696731))`

*See RC pages 29 and 109*

## Saving Throw: Rod, Staff or Spell
`max(2,round(0.097403*ceil(level/4)^2-2.640693*ceil(level/4)+17.785714)`

*See RC pages 29 and 109*

## XP by Level
`if(level>7,100000*level-700000,100*round(-0.055556*level^6+1.375*level^5-12.847222*level^4+61.041667*level^3-152.097222*level^2+197.583333*level-95))`
`TBD check if matches Cleric`

*See RC page 29*

## 1st Level Cleric User Spells
`if(level<32,round(0.000000007581*level^7-0.000001203698*level^6+0.000076079056*level^5-0.002430497581*level^4+0.041070990538*level^3-0.354213229428*level^2+1.704725602748*level-1.271352152691),9)`
`TBD check if matches Cleric`

*See RC page 29*

## 2nd Level Cleric User Spells
`if(level<33,max(0,round(0.00000000213078*level^8-0.00000030652205*level^7+0.00001805385048*level^6-0.00056122143108*level^5+0.00989323893182*level^4-0.0984488901955*level^3+0.50299308517936*level^2-0.57331345643666*level-0.58058265827352)),9)`
`TBD check if matches Cleric`

*See RC page 29*

## 3rd Level Cleric User Spells
`if(level<34,max(0,round(0.000000000364712111*level^8-0.0000000334762649*level^7+0.000000751363626425*level^6+0.000014657632447817*level^5-0.000797759824530925*level^4+0.00956894469145632*level^3-0.0283731277721411*level^2+0.383768752871907*level-1.47210605669151)),9)`
`TBD check if matches Cleric`

*See RC page 29*

## 4th Level Cleric User Spells
`if(level<35,round(if(mod(x,2),-0.00000000412405828804*level^8+0.00000059443365411807*level^7-0.0000349875662627603*level^6+0.00107798701628328*level^5-0.0184603367598047*level^4+0.170739654204282*level^3-0.745972371288857*level^2+1.28072909707652*level-0.630133217055266,-0.0000000023499*level^8+0.00000036853516*level^7-0.00002360852208*level^6+0.00079218642935*level^5-0.01481016129441*level^4+0.15085963308063*level^3-0.75052958786084*level^2+1.64718792717418*level-1.26454291756812)),9)`
`TBD check if matches Cleric`

*See RC page 29*

## 5th Level Cleric User Spells
`if(level<35,round(-0.00000000096141*level^8+0.0000001711215*level^7-0.00001250774547*level^6+0.00048167385055*level^5-0.01039624685982*level^4+0.1228003525783*level^3-0.70396324386476*level^2+1.63614906384632*level-1.09831375795249),9)`
`TBD check if matches Cleric`

*See RC page 29*

## 6th Level Cleric User Spells
`if(level<36,max(0,min(9,round(0.0000000011391434*level^8-0.000000103015731*level^7+0.0000013139558879*level^6+0.0001598680793381*level^5-0.0077174548513549*level^4+0.145506098603832*level^3-1.27783628345122*level^2+4.95546817190931*level-6.39068774283907))),9)`
`TBD check if matches Cleric`

*See RC page 29*

## 7th Level Cleric User Spells
`if(level<36,round(0.00000000032606*level^8-0.00000008897457*level^7+0.00000825616794*level^6-0.00036656278123*level^5+0.00857531604651*level^4-0.10551810847186*level^3+0.6427123495*level^2-1.67443535139322*level+1.29380965503312),9)`
`TBD check if matches Cleric`

*See RC page 29*

