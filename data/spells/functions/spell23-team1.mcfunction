execute as @s[scores={mana=150..}] run tag @s remove spell23beam
execute as @s[scores={mana=150..}] run tag @s remove spell23projectiles
execute as @s[scores={mana=150..,rightclick=1..}] if predicate spells:sneaking at @s run tag @s add spell23projectiles
execute as @s[scores={mana=150..,rightclick=1..}] unless predicate spells:sneaking at @s run tag @s add spell23beam
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23beam] at @s run summon armor_stand ^ ^ ^1 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["projectile15"],DisabledSlots:4144959}
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23beam] at @s run execute as @e[sort=nearest,limit=1,tag=projectile15] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23beam] at @s run execute as @e[sort=nearest,limit=1,tag=projectile15] at @s run tp @s ~ ~1 ~
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23beam] at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ 1 2 0
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23projectiles] at @s run summon armor_stand ^-0.5 ^1 ^1 {Team:"team1",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["projectile16"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:sea_lantern",Count:1b,tag:{Enchantments:[{}]}}]}
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23projectiles] at @s run summon armor_stand ^ ^1 ^1 {Team:"team1",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["projectile16"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:sea_lantern",Count:1b,tag:{Enchantments:[{}]}}]}
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23projectiles] at @s run summon armor_stand ^0.5 ^1 ^1 {Team:"team1",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["projectile16"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:sea_lantern",Count:1b,tag:{Enchantments:[{}]}}]}
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23projectiles] at @s run execute as @e[sort=nearest,limit=3,tag=projectile16] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23projectiles] at @s run execute as @e[sort=nearest,limit=3,tag=projectile16] at @s run tp @s ~ ~1 ~
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23projectiles] at @s run playsound entity.wither.hurt master @a ~ ~ ~ 1 2 0
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23beam] run tellraw @s {"text":"You used Discharge Fulmination! (Type I: Overcharge Beam) (-150 Mana)","color":"#3BFFCB","bold":true}
execute as @s[scores={mana=150..,rightclick=1..},tag=spell23projectiles] run tellraw @s {"text":"You used Discharge Fulmination! (Type II: Fulmination Bolts) (-150 Mana)","color":"#3BFFCB","bold":true}
execute as @s[scores={mana=150..,rightclick=1..}] run scoreboard players remove @s mana 150