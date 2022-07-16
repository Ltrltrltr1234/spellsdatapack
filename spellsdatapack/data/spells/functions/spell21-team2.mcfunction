execute as @s[scores={rightclick=1..},team=team2] at @s anchored eyes run summon armor_stand ^ ^ ^-0.1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile14","thornlash"],DisabledSlots:4144959}
execute as @s[scores={rightclick=1..},team=team2] at @s anchored eyes run execute as @e[sort=nearest,limit=1,tag=projectile14] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @s[scores={rightclick=1..},team=team2] at @s anchored eyes run execute as @e[sort=nearest,limit=1,tag=projectile14] at @s run tp @s ^ ^ ^0.6
execute as @s[scores={rightclick=1..},team=team2] at @s anchored eyes run playsound block.grass.break master @a ~ ~ ~ 1 0.5 0
execute as @s[scores={rightclick=1..},team=team2] at @s run scoreboard players set @s spell21delay 0
execute as @s[scores={rightclick=1..},team=team2] at @s run tag @s add thornlashcasted
execute as @s[scores={rightclick=1..},team=team2] run scoreboard players remove @s mana 100
execute as @s[scores={rightclick=1..},team=team2] run tellraw @s {"text":"You used Thorn Lash! (-100 Mana)","color":"dark_green","bold":true}