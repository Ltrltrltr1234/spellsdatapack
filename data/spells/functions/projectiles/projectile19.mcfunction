execute as @e[tag=projectile19] run scoreboard players add @s projtime 2

execute as @e[tag=projectile19,tag=0charge,scores={projtime=1..10}] at @s run tp @s ^ ^ ^-1.2
execute as @e[tag=projectile19,tag=0charge,scores={projtime=11..20}] at @s run tp @s ^ ^ ^-0.6
execute as @e[tag=projectile19,tag=0charge,scores={projtime=21..30}] at @s run tp @s ^ ^ ^-0.3
execute as @e[tag=projectile19,tag=0charge,scores={projtime=30..40}] at @s run tp @s ^ ^ ^-0.1

execute as @e[tag=projectile19,tag=1charge,scores={projtime=1..10}] at @s run tp @s ^ ^ ^-2.4
execute as @e[tag=projectile19,tag=1charge,scores={projtime=11..20}] at @s run tp @s ^ ^ ^-0.75
execute as @e[tag=projectile19,tag=1charge,scores={projtime=21..30}] at @s run tp @s ^ ^ ^-0.35
execute as @e[tag=projectile19,tag=1charge,scores={projtime=30..40}] at @s run tp @s ^ ^ ^-0.12
execute as @e[tag=projectile19,tag=2charge,scores={projtime=1..10}] at @s run tp @s ^ ^ ^-2.4
execute as @e[tag=projectile19,tag=2charge,scores={projtime=11..20}] at @s run tp @s ^ ^ ^-0.75
execute as @e[tag=projectile19,tag=2charge,scores={projtime=21..30}] at @s run tp @s ^ ^ ^-0.35
execute as @e[tag=projectile19,tag=2charge,scores={projtime=30..40}] at @s run tp @s ^ ^ ^-0.12

execute as @e[tag=projectile19,tag=3charge,scores={projtime=1..10}] at @s run tp @s ^ ^ ^-2
execute as @e[tag=projectile19,tag=3charge,scores={projtime=11..20}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=projectile19,tag=3charge,scores={projtime=21..30}] at @s run tp @s ^ ^ ^-0.5
execute as @e[tag=projectile19,tag=3charge,scores={projtime=30..40}] at @s run tp @s ^ ^ ^-0.16
execute as @e[tag=projectile19,tag=4charge,scores={projtime=1..10}] at @s run tp @s ^ ^ ^-2
execute as @e[tag=projectile19,tag=4charge,scores={projtime=11..20}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=projectile19,tag=4charge,scores={projtime=21..30}] at @s run tp @s ^ ^ ^-0.5
execute as @e[tag=projectile19,tag=4charge,scores={projtime=30..40}] at @s run tp @s ^ ^ ^-0.16

execute as @e[tag=projectile19,tag=5charge,scores={projtime=1..10}] at @s run tp @s ^ ^ ^-2.7
execute as @e[tag=projectile19,tag=5charge,scores={projtime=11..20}] at @s run tp @s ^ ^ ^1.35
execute as @e[tag=projectile19,tag=5charge,scores={projtime=21..30}] at @s run tp @s ^ ^ ^-0.7
execute as @e[tag=projectile19,tag=5charge,scores={projtime=30..40}] at @s run tp @s ^ ^ ^-0.23

execute as @e[tag=projectile19] if score @s projtime matches 40.. run tag @s add projdeadlol

execute as @e[tag=projectile19,tag=0charge] at @s positioned as @s run particle dust_color_transition 0.8 0.7 0.1 1 0.2 0.2 0.2 ^ ^ ^ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=projectile19,tag=1charge] at @s positioned as @s run particle dust_color_transition 0.8 0.7 0.1 2 0.2 0.2 0.2 ^ ^ ^ 0.15 0.15 0.15 0 5 normal @a
execute as @e[tag=projectile19,tag=2charge] at @s positioned as @s run particle dust_color_transition 0.8 0.7 0.1 2 0.2 0.2 0.2 ^ ^ ^ 0.2 0.2 0.2 0 5 normal @a
execute as @e[tag=projectile19,tag=3charge] at @s positioned as @s run particle dust_color_transition 1 0.8 0.1 2 0.2 0.2 0.2 ^ ^ ^ 0.25 0.25 0.25 0 7 normal @a
execute as @e[tag=projectile19,tag=4charge] at @s positioned as @s run particle dust_color_transition 1 0.8 0.1 2 0.2 0.2 0.2 ^ ^ ^ 0.25 0.25 0.25 0 7 normal @a
execute as @e[tag=projectile19,tag=5charge] at @s positioned as @s run particle dust_color_transition 1.0 1 0.2 2 0.2 0.2 0.2 ^ ^ ^ 0.3 0.3 0.3 0 10 normal @a
execute as @e[tag=projectile19] at @s positioned as @s run particle flash ^ ^ ^2 0 0 0 0 1 normal @a
execute as @e[tag=projectile19] at @s positioned as @s run particle large_smoke ^ ^ ^2 0 0 0 0.2 2 normal @a
execute as @e[tag=projectile19,team=team1] at @s if entity @e[distance=..2,team=!team1] run tag @s add projdeadlol
execute as @e[tag=projectile19,team=team2] at @s if entity @e[distance=..2,team=!team2] run tag @s add projdeadlol

execute as @e[tag=projdeadlol,tag=0charge,tag=projectile19] at @s run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Shimmering Bloom","color":"#FFD86C","bold":true}',Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=projdeadlol,tag=1charge,tag=projectile19] at @s run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Shimmering Bloom","color":"#FFD86C","bold":true}',Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=projdeadlol,tag=2charge,tag=projectile19] at @s run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Shimmering Bloom","color":"#FFD86C","bold":true}',Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projdeadlol,tag=3charge,tag=projectile19] at @s run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Shimmering Bloom","color":"#FFD86C","bold":true}',Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projdeadlol,tag=4charge,tag=projectile19] at @s run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Shimmering Bloom","color":"#FFD86C","bold":true}',Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:3b,Fuse:0,ignited:1b}
execute as @e[tag=projdeadlol,tag=5charge,tag=projectile19] at @s run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Shimmering Bloom","color":"#FFD86C","bold":true}',Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:4b,Fuse:0,ignited:1b}
execute as @e[tag=projdeadlol,tag=projectile19] at @s positioned as @s run particle large_smoke ~ ~ ~ 0 0 0 0.5 100 normal @a
execute as @e[tag=projdeadlol,tag=projectile19,tag=3charge] at @s positioned as @s run particle end_rod ~ ~ ~ 0 0 0 0.5 100 normal @a
execute as @e[tag=projdeadlol,tag=projectile19,tag=4charge] at @s positioned as @s run particle end_rod ~ ~ ~ 0 0 0 0.5 100 normal @a
execute as @e[tag=projdeadlol,tag=projectile19,tag=5charge] at @s positioned as @s run particle end_rod ~ ~ ~ 0 0 0 0.5 100 normal @a
execute as @e[tag=projdeadlol,tag=projectile19,tag=5charge] at @s positioned as @s run particle flash ~ ~ ~ 0.5 0.5 0.5 0 10 normal @a

execute as @e[tag=projdeadlol,tag=0charge,tag=projectile19] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["exaltedflame","0charge"],DisabledSlots:4144959}
execute as @e[tag=projdeadlol,tag=1charge,tag=projectile19] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["exaltedflame","1charge"],DisabledSlots:4144959}
execute as @e[tag=projdeadlol,tag=2charge,tag=projectile19] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["exaltedflame","2charge"],DisabledSlots:4144959}
execute as @e[tag=projdeadlol,tag=3charge,tag=projectile19] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["exaltedflame","3charge"],DisabledSlots:4144959}
execute as @e[tag=projdeadlol,tag=4charge,tag=projectile19] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["exaltedflame","4charge"],DisabledSlots:4144959}
execute as @e[tag=projdeadlol,tag=5charge,tag=projectile19] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["exaltedflame","5charge"],DisabledSlots:4144959}
execute as @e[tag=projdeadlol,tag=projectile19] run kill @s

execute as @e[tag=exaltedflame] run scoreboard players add @s projtime 1
execute as @e[tag=exaltedflame] at @s run kill @e[type=area_effect_cloud,distance=..3]
execute as @e[tag=exaltedflame] at @s if block ~ ~ ~ air run tp @s ~ ~-0.3 ~
execute as @e[tag=exaltedflame] at @s run playsound block.fire.ambient master @a ~ ~ ~ 3 1
execute as @e[tag=exaltedflame,tag=0charge] at @s run particle large_smoke ~ ~0.5 ~ 0.6 0 0.6 0 1 normal @a
execute as @e[tag=exaltedflame,tag=0charge] at @s run particle dust_color_transition 1.0 1.0 0.3 2 0.2 0.2 0.2 ~ ~0.5 ~ 0.6 0.2 0.6 0 1 normal @a
execute as @e[tag=exaltedflame,tag=0charge] at @s run particle electric_spark ~ ~0.5 ~ 0.6 0 0.6 0 2 normal @a
execute as @e[tag=exaltedflame,tag=1charge] at @s run particle large_smoke ~ ~0.5 ~ 1.4 0 1.4 0 2 normal @a
execute as @e[tag=exaltedflame,tag=1charge] at @s run particle dust_color_transition 1.0 1.0 0.3 2 0.2 0.2 0.2 ~ ~0.5 ~ 1.4 0.2 1.4 0 2 normal @a
execute as @e[tag=exaltedflame,tag=1charge] at @s run particle electric_spark ~ ~0.5 ~ 1.4 0 1.4 0 5 normal @a
execute as @e[tag=exaltedflame,tag=2charge] at @s run particle large_smoke ~ ~0.5 ~ 1.4 0 1.4 0 2 normal @a
execute as @e[tag=exaltedflame,tag=2charge] at @s run particle dust_color_transition 1.0 1.0 0.3 2 0.2 0.2 0.2 ~ ~0.5 ~ 1.4 0.2 1.4 0 2 normal @a
execute as @e[tag=exaltedflame,tag=2charge] at @s run particle electric_spark ~ ~0.5 ~ 1.4 0 1.4 0 5 normal @a
execute as @e[tag=exaltedflame,tag=3charge] at @s run particle large_smoke ~ ~0.5 ~ 2.4 0 2.4 0 4 normal @a
execute as @e[tag=exaltedflame,tag=3charge] at @s run particle dust_color_transition 1.0 1.0 0.3 3 0.2 0.2 0.2 ~ ~0.5 ~ 2.4 0.2 2.4 0 5 normal @a
execute as @e[tag=exaltedflame,tag=3charge] at @s run particle electric_spark ~ ~0.5 ~ 2.4 0 2.4 0 12 normal @a
execute as @e[tag=exaltedflame,tag=4charge] at @s run particle large_smoke ~ ~0.5 ~ 2.4 0 2.4 0 4 normal @a
execute as @e[tag=exaltedflame,tag=4charge] at @s run particle dust_color_transition 1.0 1.0 0.3 3 0.2 0.2 0.2 ~ ~0.5 ~ 2.4 0.2 2.4 0 5 normal @a
execute as @e[tag=exaltedflame,tag=3charge] at @s run particle electric_spark ~ ~0.5 ~ 2.4 0 2.4 0 12 normal @a
execute as @e[tag=exaltedflame,tag=5charge] at @s run particle large_smoke ~ ~0.5 ~ 3.4 0 3.4 0 7 normal @a
execute as @e[tag=exaltedflame,tag=5charge] at @s run particle dust_color_transition 1.0 1.0 0.3 3 0.2 0.2 0.2 ~ ~0.5 ~ 3.4 0.2 3.4 0 8 normal @a
execute as @e[tag=exaltedflame,tag=5charge] at @s run particle electric_spark ~ ~0.5 ~ 3.4 0 3.4 0 30 normal @a
execute as @e[tag=exaltedflame,tag=5charge] at @s run particle flash ~ ~0.5 ~ 3.4 0 3.4 0 1 normal @a

execute as @e[tag=exaltedflame,tag=0charge] at @s run effect give @e[distance=..2] resistance 1 2 true
execute as @e[tag=exaltedflame,tag=1charge] at @s run effect give @e[distance=..4] resistance 1 2 true
execute as @e[tag=exaltedflame,tag=2charge] at @s run effect give @e[distance=..4] resistance 1 2 true
execute as @e[tag=exaltedflame,tag=3charge] at @s run effect give @e[distance=..7] resistance 1 2 true
execute as @e[tag=exaltedflame,tag=4charge] at @s run effect give @e[distance=..7] resistance 1 2 true
execute as @e[tag=exaltedflame,tag=5charge] at @s run effect give @e[distance=..10] resistance 1 2 true
execute as @e[tag=exaltedflame,tag=0charge] at @s run effect give @e[distance=..2] instant_damage 1 0
execute as @e[tag=exaltedflame,tag=1charge] at @s run effect give @e[distance=..4] instant_damage 1 0
execute as @e[tag=exaltedflame,tag=2charge] at @s run effect give @e[distance=..4] instant_damage 1 0
execute as @e[tag=exaltedflame,tag=3charge] at @s run effect give @e[distance=..7] instant_damage 1 0
execute as @e[tag=exaltedflame,tag=4charge] at @s run effect give @e[distance=..7] instant_damage 1 0
execute as @e[tag=exaltedflame,tag=5charge] at @s run effect give @e[distance=..10] instant_damage 1 0

execute as @e[tag=exaltedflame,scores={projtime=600..}] run kill @s