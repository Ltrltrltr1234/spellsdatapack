execute as @s[scores={rightclick=1..}] at @s anchored eyes run summon trident ^ ^ ^1 {pickup:0b,crit:1b,Tags:["projectile11"],Motion:[0.0,0.1,0.0],CustomName:'{"text":"Frosted Spear","color":"aqua","bold":true}'}
execute as @s[scores={rightclick=1..}] at @s run execute as @e[tag=projectile11,limit=1,sort=nearest,tag=!motion_added] at @s rotated as @p run function spells:projectile-motion
execute as @s[scores={rightclick=1..}] at @s run playsound entity.llama.spit master @a ~ ~ ~ 1 1 0
execute as @s[scores={rightclick=1..}] run scoreboard players remove @s mana 50
execute as @s[scores={rightclick=1..}] run tellraw @s {"text":"You used Frost Spear! (-50 Mana)","color":"aqua","bold":true}