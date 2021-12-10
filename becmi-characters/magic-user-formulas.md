# Formulas for Magic User Class Characters

## THAC0
`round(-1.899*ceil(level/5)+20.49)`

*See RC page 106*

## Saving Throw: Death Ray or Poison
`if(level<21,round(-2*ceil(level/5)+15),round(-1*ceil(level/4)+11))`

*See RC page 19 and 109*

## Saving Throw: Magic Wands
`if(level<21,round(-2*ceil(level/5)+16),round(-1.3*ceil(level/4)+13.5))`

*See RC page 19 and 109*

## Saving Throw: Paralysis or Turn to Stone
`if(level<21,round(-2*ceil(level/5)+15),round(-1*ceil(level/4)+11))`

*See RC page 19 and 109*

## Saving Throw: Breath Attack
`if(level<21,round(-2*ceil(level/5)+18),round(-2*ceil(level/4)+20))`

*See RC page 19 and 109*

## Saving Throw: Rod, Staff, or Spell
`if(level<21,round(-3*ceil(level/5)+18),round(-0.7*ceil(level/4)+8))`

*See RC page 19 and 109*

## XP by Level
`if(level>7,150000*level-1050000,100*round(0.208333*level^5-3.125*level^4+21.875*level^3-71.875*level^2+127.916667*level-75))`

*See RC page 19*

## 1st Level Magic User Spells
`if(level<32,round(0.00000000188039894451*level^8-0.00000028015608217661*level^7+0.0000169108295163636*level^6-0.00053078957874092*level^5+0.00925790084597673*level^4-0.0892658567570209*level^3+0.451148325726248*level^2-0.834913306304534*level+1.95428707185274),9)`

*See RC page 19*

## 2nd Level Magic User Spells
`if(level<33,round(0.00000000066372303785*level^8-0.00000004204191885536*level^7-0.00000060450644914037*level^6+0.000114238584246763*level^5-0.00374593940951017*level^4+0.0566547565171608*level^3-0.4393505689064*level^2+1.95415936011069*level-2.05783120101154),9)`

*See RC page 19*

## 3rd Level Magic User Spells
`if(level<33,round(0.00000000063753002389*level^8-0.00000009725641614994*level^7+0.00000623727930918096*level^6-0.000220391434483774*level^5+0.00469557452525647*level^4-0.0607195383502797*level^3+0.435458972820488*level^2-1.04798983833503*level+0.60028376498012),9)`

*See RC page 19*

## 4th Level Magic User Spells
`if(level<34,round(-0.000000002910623*level^8+0.000000411313838*level^7-0.000023539191464*level^6+0.000696253595314*level^5-0.011180603885669*level^4+0.091808935364017*level^3-0.296701068247849*level^2+0.217575538226132*level+0.099041563214125),9)`

*See RC page 19*

## 5th Level Magic User Spells
`if(level<35,max(0,round(-0.000000000546773*level^8+0.000000023732454*level^7+0.000002374168009*level^6-0.000220692052244*level^5+0.007425659084513*level^4-0.126946429170441*level^3+1.12997962733278*level^2-4.30838820276336*level+3.78814764021506)),9)`

*See RC page 19*

## 6th Level Magic User Spells
`if(level<35,round(-0.000000000919787*level^8+0.000000141846435*level^7-0.000009253447612*level^6+0.000329252302638*level^5-0.006824148501276*level^4+0.08073100425904*level^3-0.483726682042841*level^2+1.22953733167698*level-0.920492617730635),9)`

*See RC page 19*

## 7th Level Magic User Spells
`if(level<36,max(0,round(-0.000000179357375*level^8+0.000035466875352*level^7-0.003023648919002*level^6+0.145088809557879*level^5-4.28448128247212*level^4+79.7126045535309*level^3-912.387711765927*level^2+5874.53643201496*level-16293.3469696958)),9)`

*See RC page 19*

## 8th Level Magic User Spells
`if(level<36,if(level<18,0,round(-0.000000012168914*level^8+0.000002102107233*level^7-0.000145998517745*level^6+0.00502116040164*level^5-0.076796183300227*level^4-0.166432932210447*level^3+23.4977571548936*level^2-313.252444789988*level+1383.73091067462)),9)`

*See RC page 19*

## 9th Level Magic User Spells
`if(level<36,if(level<21,0,round(-0.000000461019932*level^8+0.00011524666803*level^7-0.012441777793047*level^6+0.75862931182457*level^5-28.6032587790412*level^4+683.39145837068*level^3-10109.9457236914*level^2+84711.08897931*level-307911.796735007)),9)`

*See RC page 19*
