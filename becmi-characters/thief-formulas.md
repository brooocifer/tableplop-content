# Formulas for Thief Class Characters

## THAC0
`if(level<36,round(-1.919473684211*ceil(level/4)+20.49),2)`

*See RC page 106*

## Saving Throw: Death Ray or Poison
`round(0.14*ceil(level/4)^2-2.82*ceil(level/4)+15.93)`

*See RC pages 22 and 109*

## Saving Throw: Magic Wands
`round(0.11*ceil(level/4)^2-2.58*ceil(level/4)+16.6)`

*See RC pages 22 and 109*

## Saving Throw: Paralysis or Turn to Stone
`round(0.14*ceil(level/4)^2-2.82*ceil(level/4)+15.93)`

*See RC pages 22 and 109*

## Saving Throw: Dragon Breath
`round(0.07*ceil(level/4)^2-2.52*ceil(level/4)+18.7)`

*See RC pages 22 and 109*

## Saving Throw: Rod, Staff or Spell
`round(0.1*ceil(level/4)^2-2.64*ceil(level/4)+17.7)`

*See RC pages 22 and 109*

## XP by Level

`if(level<10,100*round(-0.0047619048*level^8+0.1912698414*level^7-3.2000000024*level^6+29.0888889108*level^5-156.0666667854*level^4+503.5388892762*level^3-944.7285721606*level^2+939.1809531027*level-368.0000002779),10000*round(12*level-92))`

*See RC page 22*

## Thief Special Abilities

*See RC page 22*

### Open Locks
`if(level>17,2*level+48,if(level>11,3*level+30,if(level>7,4*level+18,5*level+10)))`

### Find Traps
`if(level>23,level+74,if(level>20,2*level+50,if(level>16,3*level+29,if(level>13,3*level+28,if(level>8,4*level+14,5*level+5)))))`

### Remove Traps
`if(level>12,3*level+22,if(level>5,4*level+10,5*level+5))`

### Climb Walls
`if(level>34,level+84,if(level>32,level+85,level+86))`

### Move Silently
`if(level>23,level+64,if(level>11,2*level+40,if(level>7,3*level+28,if(level>4,4*level+20,5*level+15))))`

### Hide in Shadows
`if(level>13,2*level+28,if(level>5,3*level+14,if(level>2,4*level+8,5*level+5)))`

### Pick Pockets
`5*level+15`

### Hear Noise
`if(level>15,2*level+58,if(level>11,3*level+42,if(level>4,4*level+30,5*level+25)))`

## Thief Special Abilities - Bruce Heard's Revised Thief Class

*See https://bruce-heard.blogspot.com/2021/01/ThiefSkillsRevised.html*

### Open Locks
`if(level>4,2*level+48,5*level+35)`

### Find Traps
`if(level>25,level+74,if(level>7,2*level+48,5*level+25))`

### Remove Traps
`if(level>6,round(0.000000010503261*level^8-0.000001760580149*level^7+0.00012481088512*level^6-0.004874709695737*level^5+0.11442473955138*level^4-1.64856333921619*level^3+14.2047464194017*level^2-64.3225716051809*level+ 166.552545460566),5*level+20)`

### Climb Walls
`level+84`

### Move Silently
`if(level>11,level+64,round(2.3909*level+47.4727))`

### Hide in Shadows
`if(level>19,level+64,if(level>6,2*level+44,5*level+25))`

### Pick Pockets
`if(level>16,4*level+51,5*level+35)`

### Hear Noise
`if(level>4,2*level+58,5*level+45)`
