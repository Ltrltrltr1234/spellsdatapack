execute as @s[scores={rightclick=1..}] at @s run summon armor_stand ^ ^0 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile21"],DisabledSlots:4144959,Team:"team1",ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
execute as @s[scores={rightclick=1..}] at @s run execute as @e[sort=nearest,limit=1,tag=projectile21,team=team1] at @s positioned as @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={rightclick=1..}] at @s run execute as @e[sort=nearest,limit=1,tag=projectile21,team=team1] at @s positioned as @s run tp @s ~ ~1 ~
execute as @s[scores={rightclick=1..}] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 5 0.5 0
execute as @s[scores={rightclick=1..}] run scoreboard players remove @s mana 180
execute as @s[scores={rightclick=1..}] run tellraw @s {"text":"You used Atomic Discharge! (-180 Mana)","color":"#FF4F7E","bold":true}