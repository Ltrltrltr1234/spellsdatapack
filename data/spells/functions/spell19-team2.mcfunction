execute as @s[scores={rightclick=1..},team=team2] at @s anchored eyes run summon armor_stand ^ ^ ^-0.1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile13"],DisabledSlots:4144959}
execute as @s[scores={rightclick=1..},team=team2] at @s anchored eyes run execute as @e[sort=nearest,limit=1,tag=projectile13] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @s[scores={rightclick=1..},team=team2] at @s anchored eyes run execute as @e[sort=nearest,limit=1,tag=projectile13] at @s run tp @s ^ ^ ^1.1
execute as @s[scores={rightclick=1..},team=team2] at @s anchored eyes run playsound entity.blaze.shoot master @a ~ ~ ~ 0.5 2 0
execute as @s[scores={rightclick=1..},team=team2] at @s run scoreboard players set @s spell19timer 1
execute as @s[scores={rightclick=1..},team=team2] run scoreboard players remove @s mana 200
execute as @s[scores={rightclick=1..},team=team2] run tellraw @s {"text":"You used Turbulent Heave! (-200 Mana)","color":"white","bold":true}