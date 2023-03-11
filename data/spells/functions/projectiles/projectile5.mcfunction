execute as @e[tag=projectile5] at @s run tp @s ^ ^ ^-0.6
execute as @e[tag=projectile5] at @s unless block ^ ^ ^1 air run tag @s add projectiledead
execute as @e[tag=projectile5] at @s run particle dust 0 0.8 0 2 ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
execute as @e[tag=projectile5] at @s run particle ambient_entity_effect ~ ~ ~ 0.290 0.729 0.000 1 0 normal @a
execute as @e[tag=projectile5] at @s run particle ambient_entity_effect ~ ~ ~ 0.290 0.729 0.000 1 0 normal @a
execute as @e[tag=projectile5,team=team1] at @s if entity @e[distance=..1.5,team=!team1,type=!armor_stand] run tag @s add projectiledead
execute as @e[tag=projectile5,team=team2] at @s if entity @e[distance=..1.5,team=!team2,type=!armor_stand] run tag @s add projectiledead
execute as @e[tag=projectile5,team=team1,tag=projectiledead] at @s positioned ^ ^ ^1 run effect give @e[distance=..2,team=!team1] poison 8 3 true
execute as @e[tag=projectile5,team=team2,tag=projectiledead] at @s positioned ^ ^ ^1 run effect give @e[distance=..2,team=!team2] poison 8 3 true
execute as @e[tag=projectile5,tag=projectiledead] at @s run particle dust 0 1 0 3 ~ ~ ~ 0.5 0.5 0.5 0 30 normal @a
execute as @e[tag=projectile5,tag=projectiledead] at @s run particle totem_of_undying ~ ~ ~ 0 0 0 1 200 normal @a
execute as @e[tag=projectile5,tag=projectiledead] at @s run particle block oak_leaves ~ ~ ~ 1 1 1 0 40 normal @a
execute as @e[tag=projectile5,tag=projectiledead] at @s run playsound entity.zombie.infect master @a ~ ~ ~ 1 1 0
execute as @e[tag=projectile5,tag=projectiledead] at @s run playsound entity.creeper.hurt master @a ~ ~ ~ 1 1 0
execute as @e[tag=projectile5,tag=projectiledead] at @s run kill @s
execute as @e[tag=projectile5] run scoreboard players add @s projtime 1
execute as @e[tag=projectile5] if score @s projtime matches 300.. run kill @s