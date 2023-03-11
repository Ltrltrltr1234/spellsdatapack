execute as @e[tag=projectile21] at @s run tp @s ^ ^ ^-0.8
execute as @e[tag=projectile21] at @s run particle dust_color_transition 1 0.7 0 2 0.6 0 0.3 ^ ^ ^ 0.2 0.2 0.2 0 10 normal @a
execute as @e[tag=projectile21] at @s run particle dust_color_transition 1 0.7 0 1 0.6 0 0.3 ^ ^ ^ 0.4 0.4 0.4 0 8 normal @a
execute as @e[tag=projectile21] at @s run particle electric_spark ^ ^ ^ 0.5 0.5 0.5 0 5 normal @a
execute as @e[tag=projectile21] at @s run particle large_smoke ^ ^ ^ 0.3 0.3 0.3 0.1 5 normal @a
execute as @e[tag=projectile21,team=team1,scores={spell33effect=0}] at @s if entity @e[distance=..3,team=!team1,tag=!spellfrag,tag=!projectile21effect] run particle flame ~ ~ ~ 0 0 0 0.6 100 normal @a
execute as @e[tag=projectile21,team=team1,scores={spell33effect=0}] at @s if entity @e[distance=..3,team=!team1,tag=!spellfrag,tag=!projectile21effect] run playsound item.totem.use master @a ~ ~ ~ 2 2
execute as @e[tag=projectile21,team=team1,scores={spell33effect=0}] at @s if entity @e[distance=..3,team=!team1,tag=!spellfrag,tag=!projectile21effect] run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Havoc Blast","color":"red","bold":true}',Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile21,team=team2,scores={spell33effect=0}] at @s if entity @e[distance=..3,team=!team2,tag=!spellfrag,tag=!projectile21effect] run particle flame ~ ~ ~ 0 0 0 0.6 100 normal @a
execute as @e[tag=projectile21,team=team2,scores={spell33effect=0}] at @s if entity @e[distance=..3,team=!team2,tag=!spellfrag,tag=!projectile21effect] run playsound item.totem.use master @a ~ ~ ~ 2 2
execute as @e[tag=projectile21,team=team2,scores={spell33effect=0}] at @s if entity @e[distance=..3,team=!team2,tag=!spellfrag,tag=!projectile21effect] run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Havoc Blast","color":"red","bold":true}',Team:"team2",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile21] run scoreboard players add @s projtime 1
execute as @e[tag=projectile21] run scoreboard players add @s spell33effect 1
execute as @e[tag=projectile21] at @s if score @s spell33effect matches 5.. run summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile21effect","nullshockimmune"],DisabledSlots:4144959}
execute as @e[tag=projectile21] at @s if score @s spell33effect matches 5.. run scoreboard players set @s spell33effect 0
execute as @e[tag=projectile21] at @s if score @s projtime matches 40.. run playsound item.totem.use master @a ~ ~ ~ 10 0.5
execute as @e[tag=projectile21] at @s if score @s projtime matches 40.. run particle flame ~ ~ ~ 0 0 0 0.8 200 normal @a
execute as @e[tag=projectile21] at @s if score @s projtime matches 40.. run particle end_rod ~ ~ ~ 0 0 0 0.8 200 normal @a
execute as @e[tag=projectile21] at @s if score @s projtime matches 40.. run summon creeper ^ ^ ^-1 {CustomName:'{"text":"Incinerating Havoc Blast","color":"#CF003E","bold":true}',Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:3b,Fuse:0,ignited:1b}
execute as @e[tag=projectile21] at @s if score @s projtime matches 40.. run kill @s

execute as @e[tag=projectile21effect] at @s run scoreboard players add @s projtime 1
execute as @e[tag=projectile21effect,scores={projtime=1}] at @s rotated as @e[tag=projectile21,limit=1,sort=nearest] run tp @s ^ ^ ^ ~90 90
execute as @e[tag=projectile21effect,scores={projtime=1..24}] at @s run tp @s ^ ^ ^ ~ ~-15
execute as @e[tag=projectile21effect,scores={projtime=13}] at @s run tp @s ^ ^ ^ ~180 90
execute as @e[tag=projectile21effect] at @s run particle dust_color_transition 1 0. 0.1 2 0.6 0 0.36 ^ ^ ^2.7 0.1 0.1 0.1 0 1 normal @a
execute as @e[tag=projectile21effect,scores={projtime=24}] at @s run kill @s