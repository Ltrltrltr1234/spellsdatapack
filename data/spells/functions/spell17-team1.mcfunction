execute as @s[scores={mana=20..39,rightclick=1..}] at @s run summon armor_stand ^ ^0.1 ^1 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute as @s[scores={mana=20..39,rightclick=1..}] at @s run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s positioned as @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={mana=20..39,rightclick=1..}] at @s run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s positioned as @s run tp @s ~ ~1 ~
execute as @s[scores={mana=40..59,rightclick=1..}] at @s run summon armor_stand ^ ^0.1 ^1 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute as @s[scores={mana=40..59,rightclick=1..}] at @s run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s positioned as @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={mana=40..59,rightclick=1..}] at @s run execute as @e[sort=nearest,limit=1,tag=projectile9] at @s positioned as @s run tp @s ~ ~1 ~
execute as @s[scores={mana=40..59,rightclick=1..}] at @s run scoreboard players set @s spell17type 1
execute as @s[scores={mana=40..59,rightclick=1..}] at @s run scoreboard players set @s spell17timer 0
execute as @s[scores={mana=60..99,rightclick=1..}] at @s run summon armor_stand ^ ^0.1 ^1 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute as @s[scores={mana=60..99,rightclick=1..}] at @s run summon armor_stand ^0.1 ^0.1 ^0.9 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute as @s[scores={mana=60..99,rightclick=1..}] at @s run summon armor_stand ^-0.3 ^0.1 ^0.7 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute as @s[scores={mana=60..99,rightclick=1..}] at @s run summon armor_stand ^-0.5 ^0.1 ^0.5 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute as @s[scores={mana=60..99,rightclick=1..}] at @s run summon armor_stand ^0.5 ^0.1 ^0.5 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute as @s[scores={mana=60..99,rightclick=1..}] at @s run summon armor_stand ^0.3 ^0.1 ^0.7 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute as @s[scores={mana=60..99,rightclick=1..}] at @s run summon armor_stand ^-0.1 ^0.1 ^0.9 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile9"],DisabledSlots:4144959}
execute as @s[scores={mana=60..99,rightclick=1..}] at @s run execute as @e[sort=nearest,limit=7,tag=projectile9] at @s positioned as @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={mana=60..99,rightclick=1..}] at @s run execute as @e[sort=nearest,limit=7,tag=projectile9] at @s positioned as @s run tp @s ~ ~1 ~
execute as @s[scores={mana=100..199,rightclick=1..}] at @s run scoreboard players set @s spell17type 2
execute as @s[scores={mana=100..199,rightclick=1..}] at @s run scoreboard players set @s spell17timer 0
execute as @s[scores={mana=200..349,rightclick=1..}] at @s run scoreboard players set @s spell17type 3
execute as @s[scores={mana=200..349,rightclick=1..}] at @s run scoreboard players set @s spell17timer 0
execute as @s[scores={mana=350..499,rightclick=1..}] at @s run scoreboard players set @s spell17type 8
execute as @s[scores={mana=350..499,rightclick=1..}] at @s run scoreboard players set @s spell17timer 0
execute as @s[scores={spell17type=13,focus=3,rightclick=1..}] at @s run scoreboard players set @s focus 0
execute as @s[scores={spell17type=13,focus=3,rightclick=1..}] at @s run scoreboard players set @s spell17type 0
execute as @s[scores={mana=500..,rightclick=1..}] at @s run scoreboard players set @s spell17type 13
execute as @s[scores={mana=500..,rightclick=1..}] at @s run scoreboard players set @s spell17timer 0
execute as @s[scores={mana=500..,rightclick=1..}] at @s run scoreboard players set @s focus 3
execute as @s[team=team1] at @s run function spells:spell17.2-team1
execute as @s[scores={mana=20..,rightclick=1..}] at @s run playsound block.bubble_column.whirlpool_inside master @a ~ ~ ~ 1 1 0
execute as @s[scores={mana=20..39,rightclick=1..}] run tellraw @s {"text":"You used Mana Surge! (Type I: Aqueous Blast)","color":"blue","bold":true}
execute as @s[scores={mana=40..59,rightclick=1..}] run tellraw @s {"text":"You used Mana Surge! (Type II: Double Aqueous Blast)","color":"blue","bold":true}
execute as @s[scores={mana=60..99,rightclick=1..}] run tellraw @s {"text":"You used Mana Surge! (Type III: Relentless Tide)","color":"blue","bold":true}
execute as @s[scores={mana=100..199,rightclick=1..}] run tellraw @s {"text":"You used Mana Surge! (Type IV: Consecutive Aqueous Blasts)","color":"blue","bold":true}
execute as @s[scores={mana=200..349,rightclick=1..}] run tellraw @s {"text":"You used Mana Surge! (Type V: Triple Burst)","color":"blue","bold":true}
execute as @s[scores={mana=350..499,rightclick=1..}] run tellraw @s {"text":"You used Mana Surge! (Type VI: Ripple Splash)","color":"blue","bold":true}
execute as @s[scores={mana=500..,rightclick=1..}] run tellraw @s {"text":"You used Mana Surge! (Type VII: Aqueous Breaker)","color":"blue","bold":true}
execute as @s[scores={mana=20..,rightclick=1..}] run scoreboard players set @s mana 0