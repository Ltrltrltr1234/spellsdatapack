execute if entity @s[scores={spell17type=1,spell17timer=..9}] run scoreboard players add @s spell17timer 1
execute if entity @s[scores={spell17type=1,spell17timer=10}] run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=1,spell17timer=10}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[scores={spell17type=1,spell17timer=10}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={spell17type=1,spell17timer=10}] run playsound block.bubble_column.whirlpool_inside master @a ~ ~ ~ 0.5 1 0
execute if entity @s[scores={spell17type=1,spell17timer=10..}] run scoreboard players set @s spell17type 0
execute if entity @s[scores={spell17type=1,spell17timer=10}] run scoreboard players set @s spell17timer 0

execute if entity @s[scores={spell17type=2,spell17timer=0}] run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=2,spell17timer=5}] run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=2,spell17timer=10}] run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=2,spell17timer=15}] run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=2,spell17timer=20}] run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=2,spell17timer=0}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[scores={spell17type=2,spell17timer=0}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={spell17type=2,spell17timer=5}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[scores={spell17type=2,spell17timer=5}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={spell17type=2,spell17timer=10}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[scores={spell17type=2,spell17timer=10}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={spell17type=2,spell17timer=15}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[scores={spell17type=2,spell17timer=15}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={spell17type=2,spell17timer=20}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[scores={spell17type=2,spell17timer=20}] run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={spell17type=2,spell17timer=..20}] run scoreboard players add @s spell17timer 1
execute if entity @s[scores={spell17type=2,spell17timer=21..}] run scoreboard players set @s spell17type 0
execute if entity @s[scores={spell17type=2,spell17timer=21..}] run scoreboard players set @s spell17timer 0

execute if entity @s[scores={spell17type=3..7,spell17timer=0}] run summon armor_stand ^-0.5 ^0.1 ^0.5 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=3..7,spell17timer=0}] run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=3..7,spell17timer=0}] run summon armor_stand ^0.5 ^0.1 ^0.5 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=3..7,spell17timer=0}] run execute as @e[sort=nearest,limit=3,tag=projectile9] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[scores={spell17type=3..7,spell17timer=0}] run execute as @e[sort=nearest,limit=3,tag=projectile9] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={spell17type=3..7,spell17timer=..9}] run scoreboard players add @s spell17timer 1
execute if entity @s[scores={spell17type=7,spell17timer=10..}] run scoreboard players set @s spell17type 0
execute if entity @s[scores={spell17type=3..6,spell17timer=10..}] run scoreboard players add @s spell17type 1
execute if entity @s[scores={spell17type=3..7,spell17timer=10..}] run scoreboard players set @s spell17timer 0

execute if entity @s[scores={spell17type=8..12,spell17timer=0}] rotated ~ 180 run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=8..12,spell17timer=0}] rotated ~-45 180 run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=8..12,spell17timer=0}] rotated ~45 180 run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=8..12,spell17timer=0}] rotated ~-90 180 run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=8..12,spell17timer=0}] rotated ~90 180 run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=8..12,spell17timer=0}] rotated ~-135 180 run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=8..12,spell17timer=0}] rotated ~135 180 run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=8..12,spell17timer=0}] rotated ~180 180 run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute if entity @s[scores={spell17type=8..12,spell17timer=0}] run execute as @e[sort=nearest,limit=8,tag=projectile9] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[scores={spell17type=8..12,spell17timer=0}] run execute as @e[sort=nearest,limit=8,tag=projectile9] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={spell17type=8..12,spell17timer=..9}] run scoreboard players add @s spell17timer 1
execute if entity @s[scores={spell17type=12,spell17timer=10..}] run scoreboard players set @s spell17type 0
execute if entity @s[scores={spell17type=8..11,spell17timer=10..}] run scoreboard players add @s spell17type 1
execute if entity @s[scores={spell17type=8..12,spell17timer=10..}] run scoreboard players set @s spell17timer 0

execute if entity @s[scores={focus=3,spell17type=13}] at @s if score >>beamdmg beamdelay matches 1..1 run summon armor_stand ^ ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile10"],DisabledSlots:4144959}
execute if entity @s[scores={focus=3,spell17type=13}] at @s if score >>beamdmg beamdelay matches 1..1 run summon armor_stand ^-0.5 ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile10"],DisabledSlots:4144959}
execute if entity @s[scores={focus=3,spell17type=13}] at @s if score >>beamdmg beamdelay matches 1..1 run summon armor_stand ^0.5 ^0.1 ^1 {Team:"team2",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile10"],DisabledSlots:4144959}
execute if entity @s[scores={focus=3,spell17type=13}] at @s if score >>beamdmg beamdelay matches 1..1 run execute as @e[sort=nearest,limit=3,tag=projectile10] at @s run tp @s ~ ~ ~ facing entity @p
execute if entity @s[scores={focus=3,spell17type=13}] at @s if score >>beamdmg beamdelay matches 1..1 run execute as @e[sort=nearest,limit=3,tag=projectile10] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={focus=3,spell17type=13}] at @s if score >>beamdmg beamdelay matches 1..1 run playsound block.bubble_column.upwards_inside master @a ~ ~ ~ 0.8 2 0
execute if entity @s[scores={focus=3,spell17type=13,spell17timer=..199}] at @s run scoreboard players add @s spell17timer 1
execute if entity @s[scores={focus=3,spell17type=13,spell17timer=200..}] at @s run scoreboard players set @s spell17type 0
execute if entity @s[scores={focus=3,spell17type=13,spell17timer=200..}] at @s run scoreboard players set @s focus 0
execute if entity @s[scores={focus=3,spell17type=13,spell17timer=200..}] at @s run scoreboard players set @s spell17timer 0