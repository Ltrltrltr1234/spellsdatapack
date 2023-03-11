execute as @e[scores={mana=120..,rightclick=1..},team=team2] at @s run summon armor_stand ^ ^ ^-1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile8"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{Enchantments:[{}]}}]}
execute as @e[scores={mana=120..,rightclick=1..},team=team2] at @s run execute as @e[sort=nearest,limit=1,tag=projectile8] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[scores={mana=120..,rightclick=1..},team=team2] at @s run execute as @e[sort=nearest,limit=1,tag=projectile8] at @s run tp @s ^ ^ ^2
execute as @e[scores={mana=120..,rightclick=1..},team=team2] at @s run execute as @e[sort=nearest,limit=1,tag=projectile8] at @s run tp @s ~ ~1 ~
execute as @e[scores={mana=120..,rightclick=1..},team=team2] at @s run playsound entity.wither.shoot master @a ~ ~ ~ 1 1 0
execute as @e[scores={mana=120..,rightclick=1..},team=team2] run scoreboard players remove @s mana 120
execute as @e[scores={mana=120..,rightclick=1..},team=team2] run tellraw @s {"text":"You used Death's Whisper! (-120 Mana)","color":"dark_gray","bold":true}