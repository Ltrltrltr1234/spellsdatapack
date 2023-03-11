execute as @s[scores={rightclick=1..}] unless predicate spells:sneaking at @s run scoreboard players add @s spell30charge 1
execute as @s[scores={rightclick=1..}] unless predicate spells:sneaking at @s run particle large_smoke ~ ~ ~ 0 0 0 0.3 120 normal @a
execute as @s[scores={rightclick=1..}] unless predicate spells:sneaking at @s run particle end_rod ~ ~ ~ 0 0 0 0.5 110 normal @a
execute as @s[scores={rightclick=1..}] unless predicate spells:sneaking at @s run particle flash ~ ~ ~ 0 0 0 0 5 normal @a
execute as @s[scores={rightclick=1..}] unless score @s spell30charge matches 1.. if predicate spells:sneaking at @s run summon armor_stand ^ ^0 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile19","0charge"],DisabledSlots:4144959,Team:"team2"}
execute as @s[scores={rightclick=1..}] if score @s spell30charge matches 1 if predicate spells:sneaking at @s run summon armor_stand ^ ^0 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile19","1charge"],DisabledSlots:4144959,Team:"team2"}
execute as @s[scores={rightclick=1..}] if score @s spell30charge matches 2 if predicate spells:sneaking at @s run summon armor_stand ^ ^0 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile19","2charge"],DisabledSlots:4144959,Team:"team2"}
execute as @s[scores={rightclick=1..}] if score @s spell30charge matches 3 if predicate spells:sneaking at @s run summon armor_stand ^ ^0 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile19","3charge"],DisabledSlots:4144959,Team:"team2"}
execute as @s[scores={rightclick=1..}] if score @s spell30charge matches 4 if predicate spells:sneaking at @s run summon armor_stand ^ ^0 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile19","4charge"],DisabledSlots:4144959,Team:"team2"}
execute as @s[scores={rightclick=1..}] if score @s spell30charge matches 5.. if predicate spells:sneaking at @s run summon armor_stand ^ ^0 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile19","5charge"],DisabledSlots:4144959,Team:"team2"}
execute as @s[scores={rightclick=1..}] if predicate spells:sneaking at @s run execute as @e[sort=nearest,limit=1,tag=projectile19] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={rightclick=1..}] if predicate spells:sneaking at @s run execute as @e[sort=nearest,limit=1,tag=projectile19] at @s run tp @s ~ ~1 ~
execute as @s[scores={rightclick=1..}] at @s run playsound entity.illusioner.prepare_mirror master @a ~ ~ ~ 5 2 0
execute as @s[scores={rightclick=1..}] if predicate spells:sneaking at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 5 2 0
execute as @s[scores={rightclick=1..}] if predicate spells:sneaking at @s run scoreboard players set @s spell30charge 0
execute as @s[scores={rightclick=1..}] run scoreboard players remove @s mana 50
execute as @s[scores={rightclick=1..}] unless predicate spells:sneaking run tellraw @s {"text":"You charged Ashen Remembrance! (-50 Mana)","color":"#A8945D","bold":true}
execute as @s[scores={rightclick=1..}] if predicate spells:sneaking run tellraw @s {"text":"You cast Ashen Remembrance! (-50 Mana)","color":"#FFC830","bold":true}