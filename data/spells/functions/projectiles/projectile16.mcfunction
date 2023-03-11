execute as @e[tag=projectile16] at @s run scoreboard players add @s projtime 1
execute as @e[tag=projectile16] at @s run particle electric_spark ~ ~ ~ 0.6 0.6 0.6 0 10 normal @a
execute as @e[tag=projectile16] at @s run particle sculk_charge 1 ~ ~ ~ 0 0 0 0.03 3 normal @a
execute as @e[tag=projectile16,scores={projtime=1}] at @s run tp @s ~ ~ ~ ~180 0
execute as @e[tag=projectile16,scores={projtime=1}] at @s rotated ~ -25 run function spells:projectile-motion2
execute as @e[tag=projectile16] at @s unless block ^ ^ ^0.1 air run tag @s add projdead
execute as @e[tag=projectile16] at @s unless block ~ ~-0.1 ~ air run tag @s add projdead
execute as @e[tag=projectile16,team=team1] at @s if entity @e[team=!team1,distance=..2] run tag @s add projdead
execute as @e[tag=projectile16,team=team2] at @s if entity @e[team=!team2,distance=..2] unless block ~ ~-1 ~ air run tag @s add projdead
execute as @e[tag=projectile16,tag=projdead] at @s run particle electric_spark ~ ~ ~ 0.3 0.6 0.3 0 100 normal @a
execute as @e[tag=projectile16,tag=projdead] at @s run particle end_rod ~ ~ ~ 0 0 0 0.25 70 normal @a
execute as @e[tag=projectile16,tag=projdead] at @s run playsound entity.warden.sonic_boom master @a ~ ~ ~ 1 2
execute as @e[tag=projectile16,tag=projdead,team=team1] at @s run effect give @e[team=!team1,distance=..3] slowness 2 10 true
execute as @e[tag=projectile16,tag=projdead,team=team2] at @s run effect give @e[team=!team2,distance=..3] slowness 2 10 true
execute as @e[tag=projectile16,tag=projdead] at @s run summon creeper ^ ^ ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Fulmination Impact","color":"#3BFFCB","bold":true,"italic":false}'}
execute as @e[tag=projectile16,tag=projdead] at @s run kill @s
execute as @e[tag=projectile16,scores={projtime=100..}] at @s run tag @s add projdead
