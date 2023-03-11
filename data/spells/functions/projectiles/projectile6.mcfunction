execute as @e[tag=projectile6] at @s run tp @s ^ ^ ^-1.5
execute as @e[tag=projectile6] at @s positioned as @s run particle electric_spark ^ ^ ^ 0.3 0.3 0.3 0 25 normal @a
execute as @e[tag=projectile6] at @s positioned as @s run particle enchanted_hit ^ ^ ^ 0.5 0.5 0.5 0 5 normal @a
execute as @e[tag=projectile6] at @s positioned as @s unless block ^ ^ ^ air run tag @s add projdeadlol
execute as @e[tag=projectile6,team=team1] at @s if entity @e[distance=..2,team=!team1] run tag @s add projdeadlol
execute as @e[tag=projectile6,team=team2] at @s if entity @e[distance=..2,team=!team2] run tag @s add projdeadlol
execute as @e[tag=projectile6,tag=projdeadlol] at @s run summon firework_rocket ~ ~ ~ {CustomName:'{"text":"Pulse Bolt","color":"white","bold":true}',NoGravity:1b,Silent:1b,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;9238527],FadeColors:[I;61183]}]}}}}
execute as @e[tag=projectile6,tag=projdeadlol] at @s run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 5 2 0
execute as @e[tag=projectile6,tag=projdeadlol] at @s positioned as @s run particle firework ~ ~ ~ 0 0 0 0.2 100 normal @a
execute as @e[tag=projectile6,tag=projdeadlol] at @s positioned as @s run particle flash ^ ^ ^ 0 0 0 0 1 normal @a
execute as @e[tag=projectile6,tag=projdeadlol,tag=team1] at @s run effect give @e[team=!team1,distance=..3] slowness 1 5 true
execute as @e[tag=projectile6,tag=projdeadlol,tag=team2] at @s run effect give @e[team=!team2,distance=..3] slowness 1 5 true
execute as @e[tag=projectile6,tag=projdeadlol] at @s run kill @s
execute as @e[tag=projectile6] run scoreboard players add @s projtime 1
execute as @e[tag=projectile6] if score @s projtime matches 400.. run kill @s