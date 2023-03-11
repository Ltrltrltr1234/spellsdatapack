execute as @s[scores={rightclick=1..}] at @s run scoreboard players set @s spell20timer 70
execute as @s[scores={rightclick=1..}] run scoreboard players remove @s mana 400
execute as @s[scores={rightclick=1..}] run tellraw @s {"text":"You used Lightsurge Cannon! (-400 Mana)","color":"#99FFDA","bold":true}