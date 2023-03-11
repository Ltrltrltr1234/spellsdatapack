execute as @e[tag=terramancy] at @s run scoreboard players add @s spell2timer 1
execute as @e[tag=terramancy,scores={spell2timer=1}] at @s run fill ^-2 ^ ^3 ^-2 ^ ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=2}] at @s run fill ^-1 ^ ^3 ^-1 ^ ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=3}] at @s run fill ^ ^ ^3 ^ ^ ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=4}] at @s run fill ^1 ^ ^3 ^1 ^ ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=5}] at @s run fill ^2 ^ ^3 ^2 ^ ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=1}] at @s run fill ^-2 ^1 ^3 ^-2 ^1 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=2}] at @s run fill ^-1 ^1 ^3 ^-1 ^1 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=3}] at @s run fill ^ ^1 ^3 ^ ^1 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=4}] at @s run fill ^1 ^1 ^3 ^1 ^1 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=5}] at @s run fill ^2 ^1 ^3 ^2 ^1 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=1}] at @s run fill ^-2 ^2 ^3 ^-2 ^2 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=2}] at @s run fill ^-1 ^2 ^3 ^-1 ^2 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=3}] at @s run fill ^ ^2 ^3 ^ ^2 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=4}] at @s run fill ^1 ^2 ^3 ^1 ^2 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=5}] at @s run fill ^2 ^2 ^3 ^2 ^2 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=1}] at @s run fill ^-2 ^3 ^3 ^-2 ^3 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=2}] at @s run fill ^-1 ^3 ^3 ^-1 ^3 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=3}] at @s run fill ^ ^3 ^3 ^ ^3 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=4}] at @s run fill ^1 ^3 ^3 ^1 ^3 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=5}] at @s run fill ^2 ^3 ^3 ^2 ^3 ^3 dirt replace air
execute as @e[tag=terramancy,scores={spell2timer=1}] at @s run particle warped_spore ^-2 ^1.5 ^3 0.2 1 0.2 0 50 normal @a
execute as @e[tag=terramancy,scores={spell2timer=2}] at @s run particle warped_spore ^-1 ^1.5 ^3 0.2 1 0.2 0 50 normal @a
execute as @e[tag=terramancy,scores={spell2timer=3}] at @s run particle warped_spore ^ ^1.5 ^3 0.2 1 0.2 0 50 normal @a
execute as @e[tag=terramancy,scores={spell2timer=4}] at @s run particle warped_spore ^1 ^1.5 ^3 0.2 1 0.2 0 50 normal @a
execute as @e[tag=terramancy,scores={spell2timer=5}] at @s run particle warped_spore ^2 ^1.5 ^3 0.2 1 0.2 0 50 normal @a
execute as @e[tag=terramancy] at @s run playsound entity.wither.break_block master @a ~ ~ ~ 0.1 1
execute as @e[tag=terramancy,scores={spell2timer=6..}] at @s run kill @s