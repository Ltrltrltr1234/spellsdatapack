execute as @e[tag=projectile4] at @s run tp @s ^ ^ ^-1.2
execute as @e[tag=projectile4] at @s positioned ~ ~-1.5 ~ unless entity @e[distance=..2,tag=swordproj] run summon armor_stand ~ ~ ~ {Pose:{RightArm:[270f,0f,0f]},DisabledSlots:4144959,Invisible:1b,Tags:["swordproj"],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:1b,HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}},{}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:99999999}]}
execute as @e[tag=projectile4] at @s positioned ~ ~-1.5 ~ run tp @e[tag=swordproj,sort=nearest,limit=1,distance=..4] ~ ~ ~
execute as @e[tag=swordproj] at @s positioned ~ ~1.5 ~ unless entity @e[tag=projectile4,distance=..2] run kill @s
execute as @e[tag=swordproj] at @s run particle end_rod ^ ^1.5 ^0.5 0.1 0.1 0.1 0.03 3 normal @a
execute as @e[tag=projectile4] at @s unless block ^ ^ ^1 air run tag @s add projectiledead
execute as @e[tag=projectile4] at @s run playsound block.beacon.power_select master @a ~ ~ ~ 0.1 2 0
execute as @e[tag=projectile4,team=team1] at @s if entity @e[distance=..1,team=!team1,type=!armor_stand] run tag @s add projectiledead
execute as @e[tag=projectile4,team=team2] at @s if entity @e[distance=..1,team=!team2,type=!armor_stand] run tag @s add projectiledead
execute as @e[tag=projectile4,team=team1,tag=projectiledead] at @s run effect give @e[distance=..4.5,team=!team1] instant_damage 1 0 true
execute as @e[tag=projectile4,team=team2,tag=projectiledead] at @s run effect give @e[distance=..4.5,team=!team2] instant_damage 1 0 true
execute as @e[tag=projectile4,tag=projectiledead] at @s run particle firework ~ ~ ~ 0 0 0 0.5 100 normal @a
execute as @e[tag=projectile4,tag=projectiledead] at @s run particle end_rod ~ ~ ~ 0 0 0 0.35 100 normal @a
execute as @e[tag=projectile4,tag=projectiledead] at @s run particle electric_spark ~ ~ ~ 2 2 2 0 200 normal @a
execute as @e[tag=projectile4,tag=projectiledead] at @s run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 3 2 0
execute as @e[tag=projectile4,tag=projectiledead] at @s run playsound block.anvil.land master @a ~ ~ ~ 0.5 0.5 0
execute as @e[tag=projectile4,tag=projectiledead] at @s run kill @s
execute as @e[tag=projectile4] run scoreboard players add @s projtime 1
execute as @e[tag=projectile4] if score @s projtime matches 600.. run kill @s