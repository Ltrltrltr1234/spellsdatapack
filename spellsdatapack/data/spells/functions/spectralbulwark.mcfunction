execute as @e[scores={spell13timer=1..}] at @s rotated 0 0 run particle composter ^ ^ ^3 0 2 0 0 30 normal
execute as @e[scores={spell13timer=1..}] at @s rotated 0 0 run particle composter ^ ^ ^-3 0 2 0 0 30 normal
execute as @e[scores={spell13timer=1..}] at @s rotated 0 0 run particle composter ^3 ^ ^ 0 2 0 0 30 normal
execute as @e[scores={spell13timer=1..}] at @s rotated 0 0 run particle composter ^-3 ^ ^ 0 2 0 0 30 normal
execute as @e[scores={spell13timer=1..}] at @s rotated 0 0 run particle composter ^2 ^ ^2 0 2 0 0 30 normal
execute as @e[scores={spell13timer=1..}] at @s rotated 0 0 run particle composter ^-2 ^ ^2 0 2 0 0 30 normal
execute as @e[scores={spell13timer=1..}] at @s rotated 0 0 run particle composter ^-2 ^ ^-2 0 2 0 0 30 normal
execute as @e[scores={spell13timer=1..}] at @s rotated 0 0 run particle composter ^2 ^ ^-2 0 2 0 0 30 normal
execute as @a[scores={spell13timer=1..}] at @s run scoreboard players remove @s spell13timer 1
execute as @e[type=#impact_projectiles] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run playsound item.shield.block master @a ~ ~ ~
execute as @e[type=#impact_projectiles] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 30 normal @a
execute as @e[type=#impact_projectiles] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run kill @s
execute as @e[type=armor_stand,tag=!shieldeffect] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run playsound item.shield.block master @a ~ ~ ~
execute as @e[type=armor_stand,tag=!shieldeffect] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 30 normal @a
execute as @e[type=armor_stand,tag=!shieldeffect] at @s if entity @e[distance=..3,scores={spell13timer=1..}] run kill @s