execute as @a[scores={spell13timer=1..}] at @s run particle composter ~ ~ ~ 1 3 1 1 8 normal @a
execute as @a[scores={spell13timer=1..}] at @s run scoreboard players remove @s spell13timer 1
execute as @e[type=#impact_projectiles] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run playsound item.shield.block master @a ~ ~ ~
execute as @e[type=#impact_projectiles] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 30 normal @a
execute as @e[type=#impact_projectiles] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run kill @s
execute as @e[type=armor_stand] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run playsound item.shield.block master @a ~ ~ ~
execute as @e[type=armor_stand] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 30 normal @a
execute as @e[type=armor_stand] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run kill @s