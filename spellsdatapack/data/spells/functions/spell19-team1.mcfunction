execute as @e[scores={rightclick=1..},team=team1] at @s anchored eyes run summon armor_stand ^ ^ ^-1 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile13"],DisabledSlots:4144959}
execute as @e[scores={rightclick=1..},team=team1] at @s anchored eyes run execute as @e[sort=nearest,limit=1,tag=projectile13] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[scores={rightclick=1..},team=team1] at @s anchored eyes run execute as @e[sort=nearest,limit=1,tag=projectile13] at @s run tp @s ^ ^ ^2
execute as @e[scores={rightclick=1..},team=team1] at @s anchored eyes run playsound entity.blaze.shoot master @a ~ ~ ~ 0.5 2 0
execute as @e[scores={rightclick=1..},team=team1] at @s run scoreboard players set @s spell19timer 1
execute as @e[scores={rightclick=1..},team=team1] run scoreboard players remove @s mana 80
execute as @e[scores={rightclick=1..},team=team1] run tellraw @s {"text":"You used Cloudburst Barrage! (-80 Mana)","color":"white","bold":true}