execute as @e[tag=projectile1] at @s run tp @s ^ ^ ^-1
execute as @e[tag=projectile1] at @s positioned as @s run particle flame ^ ^ ^ 0.3 0.3 0.3 0 25 normal @a
execute as @e[tag=projectile1] at @s positioned as @s run particle lava ^ ^ ^ 0.3 0.3 0.3 0 3 normal @a
execute as @e[tag=projectile1] at @s positioned as @s run particle flame ^ ^ ^ 0.6 0.6 0.6 0.1 2 normal @a
execute as @e[tag=projectile1] at @s positioned as @s unless block ^ ^ ^1 air run summon creeper ^ ^ ^2 {Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=projectile1] at @s positioned as @s unless block ^ ^ ^1 air run kill @s
execute as @e[tag=projectile1,team=team1] at @s if entity @e[distance=..2,team=!team1] run summon creeper ^ ^ ^-1 {Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=projectile1,team=team1] at @s if entity @e[distance=..2,team=!team1] run kill @s
execute as @e[tag=projectile1,team=team2] at @s if entity @e[distance=..2,team=!team2] run summon creeper ^ ^ ^-1 {Team:"team2",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=projectile1,team=team2] at @s if entity @e[distance=..2,team=!team2] run kill @s
execute as @e[tag=projectile1] run scoreboard players add @s projtime 1
execute as @e[tag=projectile1] if score @s projtime matches 400.. run kill @s