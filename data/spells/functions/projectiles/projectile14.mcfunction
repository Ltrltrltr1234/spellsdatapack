execute as @e[tag=projectile14,scores={spell21delay=4..},team=team1] at @s run summon armor_stand ^ ^ ^ {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["thornlash"],DisabledSlots:4144959}
execute as @e[tag=projectile14,scores={spell21delay=4..},team=team2] at @s run summon armor_stand ^ ^ ^ {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["thornlash"],DisabledSlots:4144959}
execute as @e[tag=projectile14,scores={spell21delay=4..}] run scoreboard players set @s spell21delay 0
execute as @e[tag=projectile14] run scoreboard players add @s spell21delay 1
execute as @e[tag=projectile14,tag=!projdead] at @s run tp @s ^ ^ ^1.2
execute as @e[tag=projectile14] at @s run particle dust 0.153 0.329 0.141 2 ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=projectile14,tag=projdead] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 2 normal @a
execute as @e[tag=projectile14,tag=!projdead] at @s unless block ^ ^ ^ air run tag @s add projdead
execute as @e[tag=projectile14,team=team1,tag=!projdead] at @s if entity @e[distance=..2,team=!team1] run tag @s add projdead
execute as @e[tag=projectile14,team=team2,tag=!projdead] at @s if entity @e[distance=..2,team=!team2] run tag @s add projdead
execute as @e[tag=projectile14,tag=projdead,team=team1] at @s run effect give @e[team=!team1,distance=..3] poison 5 2
execute as @e[tag=projectile14,tag=projdead,team=team2] at @s run effect give @e[team=!team2,distance=..3] poison 5 2
execute as @e[tag=projectile14,tag=projdead] at @s run playsound block.fire.extinguish master @a ~ ~ ~ 0.3 2 0
execute as @e[tag=projectile14,tag=projdead,team=team1] at @s run tp @s @e[team=!team1,distance=..3,limit=1]
execute as @e[tag=projectile14,tag=projdead,team=team2] at @s run tp @s @e[team=!team2,distance=..3,limit=1]

execute as @e[tag=projectile14,tag=projdead,team=team1] at @s if entity @a[distance=..2,team=team1,tag=thornlashcasted] run tag @s add thornlashdeath
execute as @e[tag=projectile14,tag=projdead,team=team1,tag=thornlashdeath] at @s run tag @a[distance=..2,team=team1,tag=thornlashcasted] remove thornlashcasted
execute as @e[tag=projectile14,tag=projdead,team=team1,tag=thornlashdeath] at @s run kill @e[tag=thornlash,distance=..10,team=team1]
execute as @e[tag=projectile14,tag=projdead,team=team2] at @s if entity @a[distance=..2,team=team2,tag=thornlashcasted] run tag @s add thornlashdeath
execute as @e[tag=projectile14,tag=projdead,team=team2,tag=thornlashdeath] at @s run tag @a[distance=..2,team=team2,tag=thornlashcasted] remove thornlashcasted
execute as @e[tag=projectile14,tag=projdead,team=team2,tag=thornlashdeath] at @s run kill @e[tag=thornlash,distance=..10,team=team2]

execute as @e[tag=projectile14,tag=projdead,team=team1] at @s run execute as @a[limit=1,sort=nearest,team=team1,tag=thornlashcasted] at @s run playsound block.vine.step master @a ~ ~ ~ 1 1
execute as @e[tag=projectile14,tag=projdead,team=team1] at @s run execute as @a[limit=1,sort=nearest,team=team1,tag=thornlashcasted] at @s if block ^ ^2 ^1 air run tp @s ^ ^ ^1 facing entity @e[limit=1,sort=nearest,tag=thornlash,team=team1]
execute as @e[tag=projectile14,tag=projdead,team=team1] at @s run execute as @a[limit=1,sort=nearest,team=team1,tag=thornlashcasted] at @s run effect give @s resistance 1 5
execute as @e[tag=projectile14,tag=projdead,team=team1] at @s run execute as @a[limit=1,sort=nearest,team=team1,tag=thornlashcasted] at @s run effect give @s slow_falling 1 0 true
execute as @e[tag=projectile14,tag=projdead,team=team1] at @s run execute as @a[limit=1,sort=nearest,team=team1,tag=thornlashcasted] at @s unless block ^ ^2 ^1 air run kill @e[tag=thornlash,distance=..10,team=team1]
execute as @e[tag=projectile14,tag=projdead,team=team1] at @s run execute as @a[limit=1,sort=nearest,team=team1,tag=thornlashcasted] at @s unless block ^ ^2 ^1 air run tag @s remove thornlashcasted
execute as @e[tag=projectile14,tag=projdead,team=team2] at @s run execute as @a[limit=1,sort=nearest,team=team2,tag=thornlashcasted] at @s run playsound block.vine.step master @a ~ ~ ~ 1 1
execute as @e[tag=projectile14,tag=projdead,team=team2] at @s run execute as @a[limit=1,sort=nearest,team=team2,tag=thornlashcasted] at @s if block ^ ^2 ^1 air run tp @s ^ ^ ^1 facing entity @e[limit=1,sort=nearest,tag=thornlash,team=team2]
execute as @e[tag=projectile14,tag=projdead,team=team1] at @s run execute as @a[limit=1,sort=nearest,team=team1,tag=thornlashcasted] at @s unless block ^ ^2 ^1 air run kill @e[tag=thornlash,distance=..10,team=team1]
execute as @e[tag=projectile14,tag=projdead,team=team2] at @s run execute as @a[limit=1,sort=nearest,team=team2,tag=thornlashcasted] at @s unless block ^ ^2 ^1 air run tag @s remove thornlashcasted
execute as @e[tag=projectile14,tag=projdead,team=team2] at @s run execute as @a[limit=1,sort=nearest,team=team2,tag=thornlashcasted] at @s run effect give @s resistance 1 5
execute as @e[tag=projectile14,tag=projdead,team=team2] at @s run execute as @a[limit=1,sort=nearest,team=team2,tag=thornlashcasted] at @s run effect give @s slow_falling 1 0

execute as @e[tag=projectile14] run scoreboard players add @s projtime 1
execute as @e[tag=projectile14,tag=!projdead] if score @s projtime matches 100.. run kill @s
execute as @e[tag=projectile14,tag=projdead] if score @s projtime matches 200.. run kill @s

execute as @e[tag=thornlash,team=team1,tag=!projectile14] at @s if entity @a[distance=..2,team=team1] run kill @s
execute as @e[tag=thornlash,team=team2,tag=!projectile14] at @s if entity @a[distance=..2,team=team2] run kill @s
execute as @e[tag=thornlash,tag=!projectile14] at @s run particle dust 0.153 0.329 0.141 2 ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=thornlash,tag=!projectile14] run scoreboard players add @s projtime 1
execute as @e[tag=thornlash,tag=!projectile14] if score @s projtime matches 110.. run kill @s