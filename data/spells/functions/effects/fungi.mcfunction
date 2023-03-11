execute as @e[tag=fungusseed] at @s run scoreboard players add @s projtime 1
execute as @e[tag=fungusseed] at @s run particle totem_of_undying ~ ~1.5 ~ 0 0 0 0.2 10 normal @a
execute as @e[tag=fungusseed] at @s run particle smoke ~ ~1.5 ~ 0.1 0.1 0.1 0.1 3 normal @a
execute as @e[tag=fungusseed,scores={projtime=15..},tag=!proj19buried] at @s align xyz unless block ~ ~-1 ~ air run tp @s ~0.5 ~-1 ~0.5
execute as @e[tag=fungusseed,scores={projtime=15..}] at @s unless block ~ ~-1 ~ air run tag @s add proj19buried
execute as @e[tag=fungusseed,scores={projtime=400..}] at @s run kill @s
execute as @e[tag=fungusseed,tag=proj19buried,team=team1] at @s if entity @e[type=!armor_stand,team=!team1,distance=..2] run summon armor_stand ~ ~1 ~ {Team:"team1",Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["cursedfungus"],DisabledSlots:4144959}
execute as @e[tag=fungusseed,tag=proj19buried,team=team1] at @s if entity @e[type=!armor_stand,team=!team1,distance=..2] run kill @s
execute as @e[tag=fungusseed,tag=proj19buried,team=team2] at @s if entity @e[type=!armor_stand,team=!team2,distance=..2] run summon armor_stand ~ ~1 ~ {Team:"team2",Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["cursedfungus"],DisabledSlots:4144959}
execute as @e[tag=fungusseed,tag=proj19buried,team=team2] at @s if entity @e[type=!armor_stand,team=!team2,distance=..2] run kill @s
execute as @e[tag=fungusseed,tag=proj19buried,team=team1] at @s if entity @e[type=!armor_stand,team=team1,distance=..2] run summon armor_stand ~ ~1 ~ {Team:"team1",Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["evergreenfungus"],DisabledSlots:4144959}
execute as @e[tag=fungusseed,tag=proj19buried,team=team1] at @s if entity @e[type=!armor_stand,team=team1,distance=..2] run kill @s
execute as @e[tag=fungusseed,tag=proj19buried,team=team2] at @s if entity @e[type=!armor_stand,team=team2,distance=..2] run summon armor_stand ~ ~1 ~ {Team:"team2",Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["evergreenfungus"],DisabledSlots:4144959}
execute as @e[tag=fungusseed,tag=proj19buried,team=team2] at @s if entity @e[type=!armor_stand,team=team2,distance=..2] run kill @s

execute as @e[tag=cursedfungus] at @s run scoreboard players add @s projtime 1
execute as @e[tag=cursedfungus,scores={projtime=1..20}] at @s run particle squid_ink ~ ~ ~ 1 3 1 0.2 10 normal @a
execute as @e[tag=cursedfungus,scores={projtime=1..20}] at @s run playsound item.totem.use master @a ~ ~ ~ 5 2
execute as @e[tag=cursedfungus,scores={projtime=1..20}] at @s run tp @s ~ ~0.5 ~
execute as @e[tag=cursedfungus,scores={projtime=1..20}] at @s run execute as @e[distance=..5,type=!armor_stand] run tp @s ~ ~0.5 ~
execute as @e[tag=cursedfungus,scores={projtime=1..20}] at @s run function spells:cursedfungus
execute as @e[tag=cursedfungus,scores={projtime=20}] at @s run tp @s ~ ~1 ~
execute as @e[tag=cursedfungus,scores={projtime=21..}] at @s run tp @s ~ ~ ~ ~8 ~
execute as @e[tag=cursedfungus,scores={projtime=21..}] at @s run particle dust_color_transition 0.5 0 0.1 3 0.1 0 0.1 ~ ~-1 ~ 2 0.7 2 0 30 normal @a
execute as @e[tag=cursedfungus,scores={projtime=21..}] at @s run particle large_smoke ^ ^2 ^5 0 1.5 0 0 12 normal @a
execute as @e[tag=cursedfungus,scores={projtime=21..}] at @s unless block ~ ~-1 ~ crimson_nylium run kill @s
execute as @e[tag=cursedfungus,scores={projtime=21..},team=team1] at @s run effect give @e[team=!team1,distance=..5] hunger 3 50
execute as @e[tag=cursedfungus,scores={projtime=21..},team=team2] at @s run effect give @e[team=!team2,distance=..5] hunger 3 50

execute as @e[tag=evergreenfungus] at @s run scoreboard players add @s projtime 1
execute as @e[tag=evergreenfungus,scores={projtime=1..20}] at @s run particle cloud ~ ~ ~ 1 3 1 0.2 10 normal @a
execute as @e[tag=evergreenfungus,scores={projtime=1..20}] at @s run playsound item.totem.use master @a ~ ~ ~ 5 2
execute as @e[tag=evergreenfungus,scores={projtime=1..20}] at @s run tp @s ~ ~0.5 ~
execute as @e[tag=evergreenfungus,scores={projtime=1..20}] at @s run execute as @e[distance=..5,type=!armor_stand] run tp @s ~ ~0.5 ~
execute as @e[tag=evergreenfungus,scores={projtime=1..20}] at @s run function spells:evergreenfungus
execute as @e[tag=evergreenfungus,scores={projtime=20}] at @s run tp @s ~ ~1 ~
execute as @e[tag=evergreenfungus,scores={projtime=21..}] at @s run tp @s ~ ~ ~ ~8 ~
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team1] at @s run particle dust_color_transition 0 0.8 0.5 3 0 0.6 0.4 ~ ~-1 ~ 2 0.7 2 0 30 normal @a
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team2] at @s run particle dust_color_transition 0.5 0 0.8 3 0.4 0 0.6 ~ ~-1 ~ 2 0.7 2 0 30 normal @a
execute as @e[tag=evergreenfungus,scores={projtime=21..}] at @s run particle snowflake ^ ^2 ^5 0 1.5 0 0 12 normal @a
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team1] at @s unless block ~ ~-1 ~ warped_nylium run kill @s
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team2] at @s unless block ~ ~-1 ~ pink_terracotta run kill @s
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team1] at @s run effect give @e[team=team1,distance=..5] jump_boost 12 4
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team2] at @s run effect give @e[team=team2,distance=..5] jump_boost 12 4
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team1] at @s run effect give @e[team=team1,distance=..5] speed 12 0
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team2] at @s run effect give @e[team=team2,distance=..5] speed 12 0
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team1] at @s run effect give @e[team=team1,distance=..5] slow_falling 5 0
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team2] at @s run effect give @e[team=team2,distance=..5] slow_falling 5 0
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team1] at @s run effect give @e[team=team1,distance=..5] saturation 1 0
execute as @e[tag=evergreenfungus,scores={projtime=21..},team=team2] at @s run effect give @e[team=team2,distance=..5] saturation 1 0

execute as @a run scoreboard players remove @s spell28tpcd 1
execute as @a[team=team1,scores={spell28tpcd=..0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}}] at @s if predicate spells:sneaking if entity @e[team=team1,tag=evergreenfungus,distance=..25] run tellraw @s {"text":"You teleported to your allied Evergreen Fungus!","color":"#17FF7C","bold":true,"italic":false}
execute as @a[team=team1,scores={spell28tpcd=..0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}}] at @s if predicate spells:sneaking if entity @e[team=team1,tag=evergreenfungus,distance=..25] run playsound item.chorus_fruit.teleport master @a ~ ~ ~ 2 2
execute as @a[team=team1,scores={spell28tpcd=..0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}}] at @s if predicate spells:sneaking if entity @e[team=team1,tag=evergreenfungus,distance=..25] run tp @s @e[limit=1,sort=nearest,team=team1,tag=evergreenfungus,distance=..25]
execute as @a[team=team1,scores={spell28tpcd=..0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}}] at @s if predicate spells:sneaking if entity @e[team=team1,tag=evergreenfungus,distance=..25] run playsound item.chorus_fruit.teleport master @a ~ ~ ~ 2 2
execute as @a[team=team1,scores={spell28tpcd=..0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}}] at @s if predicate spells:sneaking if entity @e[team=team1,tag=evergreenfungus,distance=..25] run scoreboard players set @s spell28tpcd 200

execute as @a[team=team2,scores={spell28tpcd=..0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}}] at @s if predicate spells:sneaking if entity @e[team=team2,tag=evergreenfungus,distance=..25] run tellraw @s {"text":"You teleported to your allied Evergreen Fungus!","color":"#17FF7C","bold":true,"italic":false}
execute as @a[team=team2,scores={spell28tpcd=..0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}}] at @s if predicate spells:sneaking if entity @e[team=team2,tag=evergreenfungus,distance=..25] run playsound item.chorus_fruit.teleport master @a ~ ~ ~ 2 2
execute as @a[team=team2,scores={spell28tpcd=..0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}}] at @s if predicate spells:sneaking if entity @e[team=team2,tag=evergreenfungus,distance=..25] run tp @s @e[limit=1,sort=nearest,team=team2,tag=evergreenfungus,distance=..25]
execute as @a[team=team2,scores={spell28tpcd=..0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}}] at @s if predicate spells:sneaking if entity @e[team=team2,tag=evergreenfungus,distance=..25] run playsound item.chorus_fruit.teleport master @a ~ ~ ~ 2 2
execute as @a[team=team2,scores={spell28tpcd=..0},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}}] at @s if predicate spells:sneaking if entity @e[team=team2,tag=evergreenfungus,distance=..25] run scoreboard players set @s spell28tpcd 200