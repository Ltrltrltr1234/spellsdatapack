execute as @s[scores={rightclick=1..}] run scoreboard players set @s spell29charge 100
execute as @s[scores={rightclick=1..}] run scoreboard players remove @s mana 160
execute as @s[scores={rightclick=1..}] run tellraw @s {"text":"You used Rejuvenation! (-160 Mana)","color":"#FF75B1","bold":true}