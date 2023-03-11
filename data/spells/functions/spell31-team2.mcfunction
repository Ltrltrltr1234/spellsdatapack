execute as @s[scores={rightclick=1..}] at @s run summon armor_stand ^ ^1 ^ {Team:"team2",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["projectile20"],DisabledSlots:4144959}
execute as @s[scores={rightclick=1..}] at @s run execute as @e[sort=nearest,limit=1,tag=projectile20] at @s rotated as @a[team=team2,limit=1,sort=nearest] run tp @s ~ ~ ~ ~180 0
execute as @s[scores={rightclick=1..}] at @s run playsound entity.wither.death master @a ~ ~ ~ 5 2
execute as @s[scores={rightclick=1..}] at @s run scoreboard players set @s spell31dashtime 8

execute as @s[scores={rightclick=1..}] at @s positioned ^ ^1 ^2 run effect give @e[team=!team2,distance=..3] resistance 1 0 true
execute as @s[scores={rightclick=1..}] at @s positioned ^ ^1 ^5 run effect give @e[team=!team2,distance=..3] resistance 1 0 true
execute as @s[scores={rightclick=1..}] at @s positioned ^ ^1 ^8 run effect give @e[team=!team2,distance=..3] resistance 1 0 true
execute as @s[scores={rightclick=1..}] at @s positioned ^ ^1 ^2 run tag @e[team=!team2,distance=..3,tag=!nullshockimmune] add spell31kb
execute as @s[scores={rightclick=1..}] at @s positioned ^ ^1 ^5 run tag @e[team=!team2,distance=..3,tag=!nullshockimmune] add spell31kb
execute as @s[scores={rightclick=1..}] at @s positioned ^ ^1 ^8 run tag @e[team=!team2,distance=..3,tag=!nullshockimmune] add spell31kb
execute as @s[scores={rightclick=1..}] at @s positioned ^ ^1 ^2 run effect give @e[team=!team2,distance=..3] instant_damage 1 1 true
execute as @s[scores={rightclick=1..}] at @s positioned ^ ^1 ^5 run effect give @e[team=!team2,distance=..3] instant_damage 1 1 true
execute as @s[scores={rightclick=1..}] at @s positioned ^ ^1 ^8 run effect give @e[team=!team2,distance=..3] instant_damage 1 1 true

execute as @s[scores={rightclick=1..}] run tellraw @s {"text":"You used Roaring Breeze! (-250 mana)","color":"#e3e6ff","bold":true}
execute as @s[scores={rightclick=1..}] run scoreboard players remove @s mana 250