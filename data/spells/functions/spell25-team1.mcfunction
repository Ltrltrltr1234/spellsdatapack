execute as @s[scores={mana=70..,rightclick=1..,focus=0}] run tag @s add focuschecked
execute as @s[scores={mana=70..,rightclick=1..,focus=1..}] at @s run scoreboard players set @s focus 0
execute as @s[tag=focuschecked] at @s run scoreboard players set @s focus 3
execute as @s[tag=focuschecked] at @s run scoreboard players set @s beamtimer 0
execute as @s[scores={rightclick=1..}] run tag @s remove focuschecked
execute as @s[scores={mana=..69}] run scoreboard players set @s focus 0
execute as @s[scores={mana=70..,focus=3}] at @s positioned as @s if score >>beamdmg beamdelay matches 1..1 run summon armor_stand ^ ^ ^1 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile17"],DisabledSlots:4144959}
execute as @s[scores={mana=70..,focus=3}] at @s if score >>beamdmg beamdelay matches 1 run execute as @e[sort=nearest,limit=1,tag=projectile17] at @s positioned as @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={mana=70..,focus=3}] at @s if score >>beamdmg beamdelay matches 1 run execute as @e[sort=nearest,limit=1,tag=projectile17] at @s positioned as @s run tp @s ~ ~1 ~
execute as @s[scores={mana=70..,focus=3}] at @s if score >>beamdmg beamdelay matches 1 run playsound entity.wither_skeleton.hurt master @a ~ ~ ~ 1 2
execute as @s[scores={mana=70..,focus=3,beamtimer=0}] run scoreboard players remove @s mana 70
execute as @s[scores={mana=70..,focus=3,beamtimer=0,rightclick=1..}] run tellraw @s {"text":"You are using Abyss' Gaze! (-70 mana per second)","color":"#6E0B72","bold":true}