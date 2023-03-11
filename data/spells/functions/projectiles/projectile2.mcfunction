execute as @e[tag=projectile2] at @s run tp @s ^ ^ ^-0.8
execute as @e[tag=projectile2] at @s positioned as @s run particle soul_fire_flame ^ ^ ^ 0.3 0.3 0.3 0 25 normal @a
execute as @e[tag=projectile2] at @s positioned as @s run particle large_smoke ^ ^ ^ 0.3 0.3 0.3 0 3 normal @a
execute as @e[tag=projectile2] at @s positioned as @s run particle soul ^ ^ ^ 0.9 0.9 0.9 0.1 5 normal @a
execute as @e[tag=projectile2] at @s positioned as @s unless block ^ ^ ^1 air run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.3 100 normal @a
execute as @e[tag=projectile2] at @s positioned as @s unless block ^ ^ ^1 air run particle large_smoke ~ ~ ~ 0 0 0 0.3 100 normal @a
execute as @e[tag=projectile2] at @s positioned as @s unless block ^ ^ ^1 air run particle soul ~ ~ ~ 0.4 0.4 0.4 0.4 100 normal @a
execute as @e[tag=projectile2] at @s positioned as @s unless block ^ ^ ^1 air run summon creeper ^ ^ ^2 {CustomName:'{"text":"Soulburst Fireball","color":"aqua","bold":true}',Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile2] at @s positioned as @s unless block ^ ^ ^1 air run kill @s
execute as @e[tag=projectile2,team=team1] at @s if entity @e[distance=..2,team=!team1] run particle soul ~ ~ ~ 0.4 0.4 0.4 0.4 100 normal @a
execute as @e[tag=projectile2,team=team1] at @s if entity @e[distance=..2,team=!team1] run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.3 100 normal @a
execute as @e[tag=projectile2,team=team1] at @s if entity @e[distance=..2,team=!team1] run particle large_smoke ~ ~ ~ 0 0 0 0.3 100 normal @a
execute as @e[tag=projectile2,team=team1] at @s if entity @e[distance=..2,team=!team1] run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Soulburst Fireball","color":"aqua","bold":true}',Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile2,team=team1] at @s if entity @e[distance=..2,team=!team1] run kill @s
execute as @e[tag=projectile2,team=team2] at @s if entity @e[distance=..2,team=!team2] run particle soul ~ ~ ~ 0.4 0.4 0.4 0.4 100 normal @a
execute as @e[tag=projectile2,team=team2] at @s if entity @e[distance=..2,team=!team2] run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.3 100 normal @a
execute as @e[tag=projectile2,team=team2] at @s if entity @e[distance=..2,team=!team2] run particle large_smoke ~ ~ ~ 0 0 0 0.3 100 normal @a
execute as @e[tag=projectile2,team=team2] at @s if entity @e[distance=..2,team=!team2] run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Soulburst Fireball","color":"aqua","bold":true}',Team:"team2",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile2,team=team2] at @s if entity @e[distance=..2,team=!team2] run kill @s
execute as @e[tag=projectile2] run scoreboard players add @s projtime 1
execute as @e[tag=projectile2] if score @s projtime matches 300.. run kill @s