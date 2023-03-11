execute as @e[tag=projectile8,team=team1] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,team=!team1,distance=..20]
execute as @e[tag=projectile8,team=team2] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,team=!team2,distance=..20]
execute as @e[tag=projectile8] at @s run tp @s ^ ^ ^0.275
execute as @e[tag=projectile8] at @s positioned as @s run particle smoke ~ ~1.5 ~ 0 0 0 0 3 normal @a
execute as @e[tag=projectile8] at @s positioned as @s unless block ^ ^ ^ air run tag @s add projdeadlol
execute as @e[tag=projectile8,team=team1] at @s if entity @e[distance=..2,team=!team1] run tag @s add projdeadlol
execute as @e[tag=projectile8,team=team2] at @s if entity @e[distance=..2,team=!team2] run tag @s add projdeadlol
execute as @e[tag=projectile8,tag=projdeadlol] at @s run particle squid_ink ~ ~ ~ 0 0 0 0.3 100 normal @a
execute as @e[tag=projectile8,tag=projdeadlol] at @s run summon creeper ^ ^ ^ {CustomName:'{"text":"Enchanted Wither Skull","color":"dark_gray","bold":true}',Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=projectile8,tag=projdeadlol] at @s run playsound entity.wither.ambient master @a ~ ~ ~ 5 1 0
execute as @e[tag=projectile8,tag=projdeadlol,team=team1] at @s run effect give @e[team=!team1,distance=..3] wither 5 1 true
execute as @e[tag=projectile8,tag=projdeadlol,team=team2] at @s run effect give @e[team=!team2,distance=..3] wither 5 1 true
execute as @e[tag=projectile8,tag=projdeadlol,team=team1] at @s if entity @p[team=!team1,distance=..3] run effect give @a[limit=1,sort=nearest,team=team1] regeneration 3 2
execute as @e[tag=projectile8,tag=projdeadlol,team=team2] at @s if entity @p[team=!team2,distance=..3] run effect give @a[limit=1,sort=nearest,team=team2] regeneration 3 2
execute as @e[tag=projectile8,tag=projdeadlol] at @s run kill @s
execute as @e[tag=projectile8] run scoreboard players add @s projtime 1
execute as @e[tag=projectile8] if score @s projtime matches 400.. run kill @s