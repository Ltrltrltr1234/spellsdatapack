execute as @e[tag=projectile11] at @s run particle snowflake ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run playsound block.glass.break master @a ~ ~ ~ 2 1 0
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run particle snowflake ~ ~ ~ 0.3 0.3 0.3 0 20 normal @a
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run particle block ice ~ ~ ~ 0.3 0.3 0.3 5 20 normal @a
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run summon arrow ~ ~0.1 ~ {pickup:0b,damage:5d,Color:65535,Tags:["projectile12"],CustomName:'{"text":"Frosted Arrow","color":"aqua","bold":true}',SoundEvent:"block.glass.break"}
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run execute as @e[tag=projectile12,limit=1,sort=nearest,tag=!motion_added] at @s facing entity @e[tag=projectile11,limit=1,sort=nearest] eyes rotated 72 -30 run function spells:projectile-motion
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run summon arrow ~ ~0.1 ~ {pickup:0b,damage:5d,Color:65535,Tags:["projectile12"],CustomName:'{"text":"Frosted Arrow","color":"aqua","bold":true}',SoundEvent:"block.glass.break"}
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run execute as @e[tag=projectile12,limit=1,sort=nearest,tag=!motion_added] at @s facing entity @e[tag=projectile11,limit=1,sort=nearest] eyes rotated 144 -30 run function spells:projectile-motion
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run summon arrow ~ ~0.1 ~ {pickup:0b,damage:5d,Color:65535,Tags:["projectile12"],CustomName:'{"text":"Frosted Arrow","color":"aqua","bold":true}',SoundEvent:"block.glass.break"}
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run execute as @e[tag=projectile12,limit=1,sort=nearest,tag=!motion_added] at @s facing entity @e[tag=projectile11,limit=1,sort=nearest] eyes rotated 0 -30 run function spells:projectile-motion
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run summon arrow ~ ~0.1 ~ {pickup:0b,damage:5d,Color:65535,Tags:["projectile12"],CustomName:'{"text":"Frosted Arrow","color":"aqua","bold":true}',SoundEvent:"block.glass.break"}
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run execute as @e[tag=projectile12,limit=1,sort=nearest,tag=!motion_added] at @s facing entity @e[tag=projectile11,limit=1,sort=nearest] eyes rotated -72 -30 run function spells:projectile-motion
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run summon arrow ~ ~0.1 ~ {pickup:0b,damage:5d,Color:65535,Tags:["projectile12"],CustomName:'{"text":"Frosted Arrow","color":"aqua","bold":true}',SoundEvent:"block.glass.break"}
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run execute as @e[tag=projectile12,limit=1,sort=nearest,tag=!motion_added] at @s facing entity @e[tag=projectile11,limit=1,sort=nearest] eyes rotated -144 -30 run function spells:projectile-motion
execute as @e[tag=projectile12] run scoreboard players add @s projtime 1
execute as @e[tag=projectile12,scores={projtime=7..}] run kill
execute as @e[tag=projectile12,nbt={inGround:1b}] run kill
execute as @e[tag=projectile11,nbt={inGround:1b}] at @s run kill 