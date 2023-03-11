execute as @e[tag=projectile20] unless score @s cw_particleplot matches 1.. at @s run particle cloud ~ ~ ~ 0 0 0 0.2 100 normal @a
execute as @e[tag=projectile20] unless score @s cw_particleplot matches 1.. at @s run tp @s ^ ^ ^-16
execute as @e[tag=projectile20] unless score @s cw_particleplot matches 1.. at @s run particle cloud ~ ~ ~ 0 0 0 0.5 100 normal @a
execute as @e[tag=projectile20] at @s run function spells:demo/animate
execute as @e[tag=projectile20] run scoreboard players add @s cw_particleplot 1
execute as @e[tag=projectile20,team=team1] run execute at @s as @e[team=!team1,tag=spell31kb,distance=..40] at @s facing entity @e[tag=projectile20,sort=nearest,limit=1,team=team1] feet rotated ~ 0 if block ^ ^0.5 ^1 air run tp @s ^ ^0.01 ^1
execute as @e[tag=projectile20,team=team2] run execute at @s as @e[team=!team2,tag=spell31kb,distance=..40] at @s facing entity @e[tag=projectile20,sort=nearest,limit=1,team=team2] feet rotated ~ 0 if block ^ ^0.5 ^1 air run tp @s ^ ^0.01 ^1
execute as @e[tag=projectile20,team=team1] run execute at @s as @e[team=!team1,tag=spell31kb,distance=..40] at @s facing entity @e[tag=projectile20,sort=nearest,limit=1,team=team1] feet rotated ~ 0 if block ^ ^0.5 ^1 air run tp @s ^ ^0.01 ^1
execute as @e[tag=projectile20,team=team2] run execute at @s as @e[team=!team2,tag=spell31kb,distance=..40] at @s facing entity @e[tag=projectile20,sort=nearest,limit=1,team=team2] feet rotated ~ 0 if block ^ ^0.5 ^1 air run tp @s ^ ^0.01 ^1
execute as @e[tag=projectile20] if score @s cw_particleplot matches 17.. run tag @e[distance=..30] remove spell31kb
execute as @e[tag=projectile20] if score @s cw_particleplot matches 17.. run kill @s