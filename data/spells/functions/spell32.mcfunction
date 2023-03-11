execute as @s[scores={rightclick=1..}] at @s run scoreboard players set @s spell32time 600
execute as @s[scores={rightclick=1..}] at @s run playsound entity.blaze.ambient master @a ~ ~ ~ 2 2
execute as @s[scores={rightclick=1..}] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 3 0.5
execute as @s[scores={rightclick=1..}] at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 3 0.5
execute as @s[scores={rightclick=1..}] run scoreboard players remove @s mana 300
execute as @s[scores={rightclick=1..}] run tellraw @s {"text":"You used Soul Ignition! (-300 Mana)","color":"#ff4000","bold":true}