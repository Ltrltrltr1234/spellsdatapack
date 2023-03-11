execute as @e[tag=healingcircle] at @s run playsound block.beacon.ambient master @a ~ ~ ~ 0.5 2 0
execute as @e[tag=healingcircle,team=team1] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=healingcircle,team=team2] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=healingcircle,team=team1] at @s run particle dust 0.000 1.000 0.067 2 ^ ^ ^4 0 0 0 0 5 normal @a
execute as @e[tag=healingcircle,team=team2] at @s run particle dust 0.765 0 1 2 ^ ^ ^4 0 0 0 0 5 normal @a
execute as @e[tag=healingcircle,team=team1] at @s run particle dust 0.000 1.000 0.067 2 ^ ^ ^-4 0 0 0 0 5 normal @a
execute as @e[tag=healingcircle,team=team2] at @s run particle dust 0.765 0 1 2 ^ ^ ^-4 0 0 0 0 5 normal @a
execute as @e[tag=healingcircle,team=team1] at @s run particle firework ^ ^ ^4 0 0 0 0.1 3 normal @a
execute as @e[tag=healingcircle,team=team2] at @s run particle firework ^ ^ ^4 0 0 0 0.1 3 normal @a
execute as @e[tag=healingcircle,team=team1] at @s run particle firework ^ ^ ^-4 0 0 0 0.1 3 normal @a
execute as @e[tag=healingcircle,team=team2] at @s run particle firework ^ ^ ^-4 0 0 0 0.1 3 normal @a
execute as @e[tag=healingcircle] at @s run particle effect ~ ~ ~ 0 3 0 0 30 normal @a
execute as @e[tag=healingcircle,team=team1,scores={timer=10..}] at @s run effect give @a[distance=0..4,team=team1] regeneration 4 1 false
execute as @e[tag=healingcircle,team=team1] at @s run effect give @a[distance=0..4,team=team1] resistance 2 0 false
execute as @e[tag=healingcircle,team=team1] at @s run effect give @a[distance=0..4,team=team1] absorption 2 0 false
execute as @e[tag=healingcircle,team=team2,scores={timer=10..}] at @s run effect give @a[distance=0..4,team=team2] regeneration 4 1 false
execute as @e[tag=healingcircle,team=team2] at @s run effect give @a[distance=0..4,team=team2] resistance 2 0 false
execute as @e[tag=healingcircle,team=team2] at @s run effect give @a[distance=0..4,team=team2] absorption 2 0 false
execute as @e[tag=healingcircle,scores={timer=10..}] run scoreboard players set @s timer 0
execute as @e[tag=healingcircle] run scoreboard players add @s timer 1
execute as @e[tag=healingcircle] run scoreboard players add @s projtime 1
execute as @e[tag=healingcircle] if score @s projtime matches 150.. run kill @s