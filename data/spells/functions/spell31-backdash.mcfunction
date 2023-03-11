execute as @a[scores={spell31dashtime=1..}] at @s run effect give @s levitation 1 5 true
execute as @a[scores={spell31dashtime=1..}] at @s if block ^ ^ ^-1 air run tp @s ^ ^ ^-0.8
execute as @a[scores={spell31dashtime=1..}] run scoreboard players remove @s spell31dashtime 1
execute as @a[scores={spell31dashtime=0}] run effect clear @s levitation