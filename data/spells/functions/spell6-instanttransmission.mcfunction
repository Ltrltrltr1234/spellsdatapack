execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..}] at @s anchored eyes unless block ^ ^ ^5 air run tag @s add tpfail
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..}] at @s anchored eyes unless block ^ ^1 ^5 air run tag @s add tpfail
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=tpfail] at @s run tellraw @s {"text":"You can't use that spell because you are teleporting into a block!","color":"red","bold":true}
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=tpfail] at @s run playsound entity.donkey.angry master @s ~ ~ ~ 1 1 1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=!tpfail] at @s run tag @s add successteleport
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=successteleport] at @s run particle dust_color_transition 0.000 0.000 0.000 2 0.702 0.000 1.000 ^ ^ ^ 1 0.5 0.5 2 120 normal @a
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=successteleport] at @s anchored eyes run tp @s ^ ^ ^5
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=successteleport] at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=successteleport] at @s run particle dust_color_transition 0.000 0.000 0.000 2 0.702 0.000 1.000 ^ ^ ^ 1 0.75 0.75 2 120 normal @a
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=successteleport] run scoreboard players remove @s mana 50
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=successteleport] run tellraw @s {"text":"You used Instant Transmission! (-50 Mana)","color":"dark_purple","bold":true}
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=successteleport] at @s run tag @s remove successteleport
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={rightclick=1..},tag=tpfail] at @s run tag @s remove tpfail