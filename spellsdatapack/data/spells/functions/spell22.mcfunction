execute as @s[scores={rightclick=1..}] at @s run scoreboard players set @s spell22blades 5
execute as @s[scores={rightclick=1..}] run scoreboard players operation @s hp_prev = @s hp
execute as @s[scores={rightclick=1..}] run kill @e[tag=spellblade,distance=..5]
execute as @s[scores={rightclick=1..}] run scoreboard players remove @s mana 300
execute as @s[scores={rightclick=1..}] at @s run playsound entity.warden.roar master @a ~ ~ ~ 1 2
execute as @s[scores={rightclick=1..}] run tellraw @s {"text":"You used Dance of Blades! (-300 Mana)","color":"#960000","bold":true}