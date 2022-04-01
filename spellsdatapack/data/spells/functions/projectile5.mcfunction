execute as @e[tag=projectile5] at @s run tp @s ^ ^ ^-0.6
execute as @e[tag=projectile5] at @s unless block ^ ^ ^1 air run tag @s add projectiledead
execute as @e[tag=projectile5] at @s run particle totem_of_undying ~ ~ ~ 0.2 0.2 0.2 0 5 normal @a
execute as @e[tag=projectile5,team=team1] at @s if entity @e[distance=..1,team=!team1,type=!armor_stand] run tag @s add projectiledead
execute as @e[tag=projectile5,team=team2] at @s if entity @e[distance=..1,team=!team2,type=!armor_stand] run tag @s add projectiledead
execute as @e[tag=projectile5,team=team1,tag=projectiledead] at @s positioned ^ ^ ^1 run effect give @e[distance=..2,team=!team1] poison 4 1 true
execute as @e[tag=projectile5,team=team2,tag=projectiledead] at @s positioned ^ ^ ^1 run effect give @e[distance=..2,team=!team2] poison 4 1 true
execute as @e[tag=projectile5,tag=projectiledead] at @s run particle cloud ~ ~ ~ 1 1 1 0 25 normal @a
execute as @e[tag=projectile5,tag=projectiledead] at @s run particle block oak_leaves ~ ~ ~ 1 1 1 0 40 normal @a
execute as @e[tag=projectile5,tag=projectiledead] at @s run playsound block.vine.break master @a ~ ~ ~ 0.5 1 0
execute as @e[tag=projectile5,tag=projectiledead] at @s run playsound entity.creeper.hurt master @a ~ ~ ~ 0.5 1 0
execute as @e[tag=projectile5,tag=projectiledead] at @s run kill @s
execute as @e[tag=projectile5] run scoreboard players add @s projtime 1
execute as @e[tag=projectile5] if score @s projtime matches 300.. run kill @s