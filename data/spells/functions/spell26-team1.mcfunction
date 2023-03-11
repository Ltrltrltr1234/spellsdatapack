execute as @s[scores={rightclick=1..},team=team1] at @s positioned as @s run summon armor_stand ^ ^0 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile18","nullshockimmune"],DisabledSlots:4144959,Team:"team2"}
execute as @s[scores={rightclick=1..},team=team1] at @s run execute as @e[sort=nearest,limit=1,tag=projectile18] at @s positioned as @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={rightclick=1..},team=team1] at @s run execute as @e[sort=nearest,limit=1,tag=projectile18] at @s positioned as @s run tp @s ~ ~1 ~
execute as @s[scores={rightclick=1..},team=team1] at @s run playsound entity.illusioner.prepare_mirror master @a ~ ~ ~ 5 2 0
execute as @s[scores={rightclick=1..},team=team1] run scoreboard players remove @s mana 60
execute as @s[scores={rightclick=1..},team=team1] run tellraw @s {"text":"You used Catalyzing Mist! (-60 Mana)","color":"#98D9F1","bold":true}