execute as @s[scores={rightclick=1..}] run effect give @s absorption 10 2
execute as @s[scores={rightclick=1..}] run effect give @s saturation 6 0
execute as @s[scores={rightclick=1..}] at @s run particle glow ~ ~1 ~ 3 0 3 0 120 normal @a
execute as @s[scores={rightclick=1..}] at @s run summon area_effect_cloud ~ ~0.1 ~ {Particle:"happy_villager",NoGravity:1b,Radius:1f,RadiusPerTick:0.2f,Duration:20}
execute as @s[scores={rightclick=1..}] at @s run playsound entity.warden.dig master @a ~ ~ ~ 2 2
execute as @s[scores={rightclick=1..}] at @s run playsound entity.player.levelup master @a ~ ~ ~ 5 0.75 0
execute as @s[scores={rightclick=1..}] run scoreboard players remove @s mana 150
execute as @s[scores={rightclick=1..}] run tellraw @s {"text":"You used Demeter's Favour! (-150 Mana)","color":"#D2F198","bold":true}