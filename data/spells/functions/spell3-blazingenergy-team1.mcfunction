execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..,rightclick=1..},team=team1] at @s positioned as @s run summon armor_stand ^ ^0 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["projectile1"],DisabledSlots:4144959,Team:"team1"}
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..,rightclick=1..},team=team1] at @s run execute as @e[sort=nearest,limit=1,tag=projectile1] at @s positioned as @s run tp @s ~ ~ ~ facing entity @p
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..,rightclick=1..},team=team1] at @s run execute as @e[sort=nearest,limit=1,tag=projectile1] at @s positioned as @s run tp @s ~ ~1 ~
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..,rightclick=1..},team=team1] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 5 0.5 0
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..,rightclick=1..},team=team1] run scoreboard players remove @s mana 40
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..,rightclick=1..},team=team1] run tellraw @s {"text":"You used Blazing Energy! (-40 Mana)","color":"aqua","bold":true}