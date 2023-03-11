execute as @e[tag=projectile13,team=team1] at @s run tp @s ~ ~ ~ facing entity @e[type=!armor_stand,limit=1,sort=nearest,team=!team1,distance=..6]
execute as @e[tag=projectile13,team=team2] at @s run tp @s ~ ~ ~ facing entity @e[type=!armor_stand,limit=1,sort=nearest,team=!team2,distance=..6]
execute as @e[tag=projectile13] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=projectile13] at @s positioned as @s run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal @a
execute as @e[tag=projectile13] at @s positioned as @s run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0 4 normal @a
execute as @e[tag=projectile13] at @s positioned as @s run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0 4 normal @a
execute as @e[tag=projectile13] at @s positioned as @s unless block ^ ^ ^ air run tag @s add projdeadlol
execute as @e[tag=projectile13,team=team1] at @s if entity @e[distance=..2,team=!team1] run tag @s add projdeadlol
execute as @e[tag=projectile13,team=team2] at @s if entity @e[distance=..2,team=!team2] run tag @s add projdeadlol
execute as @e[tag=projectile13,tag=projdeadlol,team=team1] at @s at @e[distance=..2,team=!team1,limit=1,sort=nearest] run summon arrow ~ ~1 ~ {CustomName:'{"text":"Wind Blast","color":"#E3E3E3","bold":true}',pickup:0b,damage:3d,Tags:["damager1"],SoundEvent:"block.wool.place"}
execute as @e[tag=projectile13,tag=projdeadlol,team=team2] at @s at @e[distance=..2,team=!team2,limit=1,sort=nearest] run summon arrow ~ ~1 ~ {CustomName:'{"text":"Wind Blast","color":"#E3E3E3","bold":true}',pickup:0b,damage:3d,Tags:["damager2"],SoundEvent:"block.wool.place"}
execute as @e[tag=projectile13,tag=projdeadlol] at @s run playsound entity.shulker_bullet.hit master @a ~ ~ ~ 5 1 0
execute as @e[tag=projectile13,tag=projdeadlol,team=team1] at @s run effect give @e[team=!team1,distance=..3] levitation 2 2 true
execute as @e[tag=projectile13,tag=projdeadlol,team=team2] at @s run effect give @e[team=!team2,distance=..3] levitation 2 2 true
execute as @e[tag=projectile13,tag=projdeadlol] at @s run kill @s
execute as @e[tag=projectile13] run scoreboard players add @s projtime 1
execute as @e[tag=projectile13] if score @s projtime matches 400.. run kill @s