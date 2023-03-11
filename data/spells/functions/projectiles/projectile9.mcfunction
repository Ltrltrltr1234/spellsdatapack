execute as @e[tag=projectile9] at @s run tp @s ^ ^ ^-0.7
execute as @e[tag=projectile9] at @s positioned as @s run particle dripping_water ^ ^ ^ 0.08 0.08 0.08 0 5 normal @a
execute as @e[tag=projectile9] at @s positioned as @s run particle splash ^ ^ ^ 0.2 0.2 0.2 0 3 normal @a
execute as @e[tag=projectile9] at @s positioned as @s run particle dust 0.231 0.333 1.000 1 ^ ^ ^ 0.08 0.08 0.08 0 10 normal @a
execute as @e[tag=projectile9] at @s positioned as @s unless block ^ ^ ^ air unless block ^ ^ ^ water run tag @s add projdeadlol
execute as @e[tag=projectile9,team=team1] at @s if entity @e[distance=..2,team=!team1] run tag @s add projdeadlol
execute as @e[tag=projectile9,team=team2] at @s if entity @e[distance=..2,team=!team2] run tag @s add projdeadlol
execute as @e[tag=projectile9,tag=projdeadlol] at @s run summon firework_rocket ~ ~ ~ {CustomName:'{"text":"Aqueous Blast","color":"blue","bold":true}',NoGravity:1b,Silent:1b,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;4540671],FadeColors:[I;8751103]}]}}}}
execute as @e[tag=projectile9,tag=projdeadlol] at @s run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 2 0
execute as @e[tag=projectile9,tag=projdeadlol] at @s run fill ^ ^ ^ ^ ^ ^1 water[level=15] replace air
execute as @e[tag=projectile9,tag=projdeadlol] at @s run kill @s
execute as @e[tag=projectile9] run scoreboard players add @s projtime 1
execute as @e[tag=projectile9] if score @s projtime matches 200.. run kill @s