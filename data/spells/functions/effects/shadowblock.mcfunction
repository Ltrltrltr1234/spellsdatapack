execute as @e[scores={spell10timer=1..}] run scoreboard players remove @s spell10timer 1
execute as @e[scores={spell10timer=1..}] at @s positioned ~ ~-0.1 ~ if block ~ ~ ~ air unless entity @e[tag=shadowblock,distance=..1] run summon shulker ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,Color:15b,Tags:["shadowblock"]}
execute as @e[scores={spell10timer=1..10}] run effect give @s slow_falling 5 0 true
execute as @e[tag=shadowblock] run scoreboard players add @s projtime 1
execute as @e[tag=shadowblock] if score @s projtime matches 20.. at @s run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal @a
execute as @e[tag=shadowblock] if score @s projtime matches 20.. at @s run playsound item.firecharge.use master @a ~ ~ ~ 0.1 2 0
execute as @e[tag=shadowblock] if score @s projtime matches 20.. run tp @s 0 -1000 0
execute as @e[tag=shadowblock] if score @s projtime matches 20.. run kill @s