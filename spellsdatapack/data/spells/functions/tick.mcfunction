execute as @a[scores={mana=..499}] run scoreboard players add @s mana 1
execute as @a[scores={spell8timer=1..,mana=..499}] at @s run scoreboard players add @s mana 1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b}}}] run title @s actionbar [{"text":"Mana: ","color":"#00FFF7"},{"score":{"name":"*","objective":"mana"},"color":"#00FFF7","bold":true},{"text":"/500","color":"#00FFF7","bold":true}]

execute as @e unless score @s focus matches 1.. run scoreboard players set @s focus 0
execute as @e[scores={focus=1..}] run scoreboard players add @s beamtimer 1
execute as @e[scores={focus=1..,beamtimer=20..}] run scoreboard players set @s beamtimer 0

execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:1}}},scores={mana=300..}] run function spells:spell1-galesblessing
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:2}}},scores={mana=30..}] run function spells:spell2-terramancy
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..},team=team1] run function spells:spell3-blazingenergy-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..},team=team2] run function spells:spell3-blazingenergy-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:4}}},scores={mana=120..},team=team1] run function spells:spell4-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:4}}},scores={mana=120..},team=team2] run function spells:spell4-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:5}}},scores={mana=150..},team=team1] run function spells:spell5-spiritualvitality-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:5}}},scores={mana=150..},team=team2] run function spells:spell5-spiritualvitality-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={mana=50..}] run function spells:spell6-instanttransmission
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:7}}},scores={mana=230..},team=team1] run function spells:spell7-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:7}}},scores={mana=230..},team=team2] run function spells:spell7-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:8}}},scores={mana=200..}] run function spells:spell8
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:9}}}] run function spells:spell9
scoreboard players set @a rightclick 0

execute as @e[tag=projectile1] at @s run tp @s ^ ^ ^-1
execute as @e[tag=projectile1] at @s positioned as @s run particle flame ^ ^ ^ 0.3 0.3 0.3 0 25 normal @a
execute as @e[tag=projectile1] at @s positioned as @s run particle lava ^ ^ ^ 0.3 0.3 0.3 0 3 normal @a
execute as @e[tag=projectile1] at @s positioned as @s run particle flame ^ ^ ^ 0.6 0.6 0.6 0.1 2 normal @a
execute as @e[tag=projectile1] at @s positioned as @s unless block ^ ^ ^1 air run summon creeper ^ ^ ^2 {Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=projectile1] at @s positioned as @s unless block ^ ^ ^1 air run kill @s
execute as @e[tag=projectile1,team=team1] at @s if entity @e[distance=..2,team=!team1] run summon creeper ^ ^ ^-1 {Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=projectile1,team=team1] at @s if entity @e[distance=..2,team=!team1] run kill @s
execute as @e[tag=projectile1,team=team2] at @s if entity @e[distance=..2,team=!team2] run summon creeper ^ ^ ^-1 {Team:"team2",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=projectile1,team=team2] at @s if entity @e[distance=..2,team=!team2] run kill @s
execute as @e[tag=projectile1] run scoreboard players add @s projtime 1
execute as @e[tag=projectile1] if score @s projtime matches 400.. run kill @s

execute as @e[tag=projectile2] at @s run tp @s ^ ^ ^-0.8
execute as @e[tag=projectile2] at @s positioned as @s run particle soul_fire_flame ^ ^ ^ 0.3 0.3 0.3 0 25 normal @a
execute as @e[tag=projectile2] at @s positioned as @s run particle large_smoke ^ ^ ^ 0.4 0.4 0.4 0 3 normal @a
execute as @e[tag=projectile2] at @s positioned as @s run particle soul ^ ^ ^ 0.7 0.7 0.7 0.1 2 normal @a
execute as @e[tag=projectile2] at @s positioned as @s unless block ^ ^ ^1 air run summon creeper ^ ^ ^2 {Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile2] at @s positioned as @s unless block ^ ^ ^1 air run kill @s
execute as @e[tag=projectile2,team=team1] at @s if entity @e[distance=..2,team=!team1] run summon creeper ^ ^ ^-1 {Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile2,team=team1] at @s if entity @e[distance=..2,team=!team1] run kill @s
execute as @e[tag=projectile2,team=team2] at @s if entity @e[distance=..2,team=!team2] run summon creeper ^ ^ ^-1 {Team:"team2",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile2,team=team2] at @s if entity @e[distance=..2,team=!team2] run kill @s
execute as @e[tag=projectile2] run scoreboard players add @s projtime 1
execute as @e[tag=projectile2] if score @s projtime matches 600.. run kill @s

execute as @e[tag=healingcircle] at @s run playsound block.beacon.ambient master @a ~ ~ ~ 0.5 2 0
execute as @e[tag=healingcircle,team=team1] at @s run particle dust 0.000 1.000 0.067 2 ~ ~ ~ 1.5 0 1.5 1 15 normal @a
execute as @e[tag=healingcircle,team=team2] at @s run particle dust 0.765 0 1 2 ~ ~ ~ 1.5 0 1.5 1 15 normal @a
execute as @e[tag=healingcircle] at @s run particle effect ~ ~ ~ 0 3 0 0 30 normal @a
execute as @e[tag=healingcircle,team=team1,scores={timer=10..}] at @s run effect give @a[distance=0..4,team=team1] regeneration 4 1 false
execute as @e[tag=healingcircle,team=team1] at @s run effect give @a[distance=0..4,team=team1] resistance 2 0 false
execute as @e[tag=healingcircle,team=team1] at @s run effect give @a[distance=0..4,team=team1] absorption 2 0 false
execute as @e[tag=healingcircle,team=team2,scores={timer=10..}] at @s run effect give @a[distance=0..4,team=team2] regeneration 4 1 false
execute as @e[tag=healingcircle,team=team2] at @s run effect give @a[distance=0..4,team=team2] resistance 2 0 false
execute as @e[tag=healingcircle,team=team2] at @s run effect give @a[distance=0..4,team=team2] absorption 2 0 false
execute as @e[tag=healingcircle,scores={timer=10..}] run scoreboard players set @s timer 0
execute as @e[tag=healingcircle] run scoreboard players add @s timer 1
execute as @e[tag=healingcircle] run scoreboard players add @s projtime 1
execute as @e[tag=healingcircle] if score @s projtime matches 150.. run kill @s

execute as @e[tag=projectile3] at @s run tp @s ^ ^ ^-1
execute as @e[tag=projectile3] at @s positioned as @s run particle snowflake ^ ^ ^ 0.1 0.1 0.1 0 2 normal @a
execute as @e[tag=projectile3] at @s positioned as @s run particle item_snowball ^ ^ ^ 0 0 0 0 1 normal @a
execute as @e[tag=projectile3] at @s positioned as @s unless block ^ ^ ^1 air run fill ~ ~1 ~ ~ ~2 ~ ice replace air
execute as @e[tag=projectile3] at @s positioned as @s unless block ^ ^ ^1 air run playsound block.glass.break master @a ~ ~ ~ 1 2
execute as @e[tag=projectile3] at @s positioned as @s unless block ^ ^ ^1 air run kill @s
execute as @e[tag=projectile3] at @s run tp @s ^ ^ ^-1
execute as @e[tag=projectile3] at @s positioned as @s run particle snowflake ^ ^ ^ 0.1 0.1 0.1 0 2 normal @a
execute as @e[tag=projectile3] at @s positioned as @s run particle item_snowball ^ ^ ^ 0 0 0 0 1 normal @a
execute as @e[tag=projectile3] at @s positioned as @s unless block ^ ^ ^1 air run fill ~ ~1 ~ ~ ~2 ~ ice replace air
execute as @e[tag=projectile3] at @s positioned as @s unless block ^ ^ ^1 air run playsound block.glass.break master @a ~ ~ ~ 1 2
execute as @e[tag=projectile3] at @s positioned as @s unless block ^ ^ ^1 air run kill @s
execute as @e[tag=projectile3] run scoreboard players add @s projtime 1
execute as @e[tag=projectile3] if score @s projtime matches 5.. run kill @s

execute as @a[scores={spell8timer=1..}] at @s run particle falling_water ~ ~ ~ 1 2 1 0 5 normal @a
execute as @a[scores={spell8timer=1..}] at @s run playsound block.beacon.ambient master @a ~ ~ ~ 0.5 1 0
execute as @a[scores={spell8timer=1..}] at @s run scoreboard players remove @s spell8timer 1