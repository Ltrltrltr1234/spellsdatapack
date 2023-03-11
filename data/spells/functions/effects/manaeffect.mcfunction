execute as @a[scores={spell8timer=1..}] at @s run particle falling_water ~ ~ ~ 1 2 1 0 5 normal @a
execute as @a[scores={spell8timer=1..}] at @s run playsound block.beacon.ambient master @a ~ ~ ~ 0.5 1 0
execute as @a[scores={spell8timer=1..}] at @s run scoreboard players remove @s spell8timer 1