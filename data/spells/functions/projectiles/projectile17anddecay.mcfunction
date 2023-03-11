execute as @e[tag=projectile17] at @s run tp @s ^ ^ ^-1
execute as @e[tag=projectile17] at @s run particle dust_color_transition 0.58 0.06 0.6 2 0 0 0 ~ ~ ~ 0.1 0.1 0.1 1 5 normal @a
execute as @e[tag=projectile17] at @s run particle portal ~ ~ ~ 0.3 0.3 0.3 0 3 normal @a
execute as @e[tag=projectile17,team=team1] if score >>beamdmg beamdmg matches 1 at @s unless block ^ ^ ^-0.5 air unless entity @e[distance=..2,team=team1,tag=lingeringdecay] run summon armor_stand ^ ^ ^1 {Team:"team1",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["nullshockimmune","lingeringdecay"],DisabledSlots:4144959}
execute as @e[tag=projectile17,team=team2] if score >>beamdmg beamdmg matches 1 at @s unless block ^ ^ ^-0.5 air unless entity @e[distance=..2,team=team2,tag=lingeringdecay] run summon armor_stand ^ ^ ^1 {Team:"team2",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["nullshockimmune","lingeringdecay"],DisabledSlots:4144959}
execute as @e[tag=projectile17,team=team1] if score >>beamdmg beamdmg matches 1 at @s unless block ^ ^ ^-0.5 air run effect give @e[distance=..3,team=!team1] wither 5 3
execute as @e[tag=projectile17,team=team2] if score >>beamdmg beamdmg matches 1 at @s unless block ^ ^ ^-0.5 air run effect give @e[distance=..3,team=!team2] wither 5 3
execute as @e[tag=projectile17] at @s unless block ^ ^ ^-0.5 air run playsound entity.warden.attack_impact master @a ~ ~ ~ 3 2
execute as @e[tag=projectile17] at @s unless block ^ ^ ^-0.5 air run kill @s
execute as @e[tag=projectile17] run scoreboard players add @s projtime 1
execute as @e[tag=projectile17] if score @s projtime matches 15.. run kill @s

execute as @e[tag=lingeringdecay] run scoreboard players add @s projtime 1
execute as @e[tag=lingeringdecay] if score @s projtime matches 400.. run kill @s
execute as @e[tag=lingeringdecay] at @s run particle large_smoke ~ ~ ~ 0.5 0 0.5 0.05 2 normal @a
execute as @e[tag=lingeringdecay,team=team1] at @s run particle dust_color_transition 0 0 0 3 0.8 0 0.4 ~ ~ ~ 0.5 0 0.5 0 10 normal @a
execute as @e[tag=lingeringdecay,team=team2] at @s run particle dust_color_transition 0 0 0 3 0.4 0 0.8 ~ ~ ~ 0.5 0 0.5 0 10 normal @a
execute as @e[tag=lingeringdecay,team=team1] at @s if entity @e[team=!team1,distance=..2] if score >>beamdmg beamdmg matches 1 run playsound entity.warden.attack_impact master @a ~ ~ ~ 1 0.5
execute as @e[tag=lingeringdecay,team=team2] at @s if entity @e[team=!team2,distance=..2] if score >>beamdmg beamdmg matches 1 run playsound entity.warden.attack_impact master @a ~ ~ ~ 1 0.5
execute as @e[tag=lingeringdecay,team=team1] at @s run effect give @e[team=!team1,distance=..2] blindness 3 0
execute as @e[tag=lingeringdecay,team=team2] at @s run effect give @e[team=!team2,distance=..2] blindness 3 0
execute as @e[tag=lingeringdecay,team=team1] at @s run effect give @e[team=!team1,distance=..2] slowness 3 3
execute as @e[tag=lingeringdecay,team=team2] at @s run effect give @e[team=!team2,distance=..2] slowness 3 3
execute as @e[team=team1,scores={hp=..11}] at @s if entity @e[tag=lingeringdecay,distance=..2,team=team1] unless predicate spells:hasregen run playsound block.beacon.activate master @a ~ ~ ~ 2 2
execute as @e[team=team2,scores={hp=..11}] at @s if entity @e[tag=lingeringdecay,distance=..2,team=team2] unless predicate spells:hasregen run playsound block.beacon.activate master @a ~ ~ ~ 2 2
execute as @e[team=team1,scores={hp=..11}] at @s if entity @e[tag=lingeringdecay,distance=..2,team=team1] unless predicate spells:hasregen run effect give @s regeneration 3 0
execute as @e[team=team2,scores={hp=..11}] at @s if entity @e[tag=lingeringdecay,distance=..2,team=team2] unless predicate spells:hasregen run effect give @s regeneration 3 0