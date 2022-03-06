execute as @a[scores={mana=..499}] run scoreboard players add @s mana 1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b}}}] run title @s actionbar [{"text":"Mana: ","color":"#00FFF7"},{"score":{"name":"*","objective":"mana"},"color":"#00FFF7","bold":true},{"text":"/500","color":"#00FFF7","bold":true}]

execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:1}}},scores={mana=100..}] run function spells:spell1-galesblessing
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:2}}},scores={mana=30..}] run function spells:spell2-terramancy
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..},team=team1] run function spells:spell3-blazingenergy-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..},team=team2] run function spells:spell3-blazingenergy-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:4}}},scores={mana=150..},team=team1] run function spells:spell4-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:4}}},scores={mana=150..},team=team2] run function spells:spell4-team2
execute as @e[scores={rightclick=1..}] run scoreboard players set @s rightclick 0

execute as @e[tag=projectile1] at @s run tp @s ^ ^ ^-1
execute as @e[tag=projectile1] at @s positioned as @s run particle flame ^ ^ ^ 0.3 0.3 0.3 0 25 normal @a
execute as @e[tag=projectile1] at @s positioned as @s run particle lava ^ ^ ^ 0.3 0.3 0.3 0 3 normal @a
execute as @e[tag=projectile1] at @s positioned as @s run particle flame ^ ^ ^ 0.6 0.6 -1.5 0.1 3 normal @a
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
execute as @e[tag=projectile2] at @s positioned as @s run particle large_smoke ^ ^ ^ 0.3 0.3 0.3 0 3 normal @a
execute as @e[tag=projectile2] at @s positioned as @s run particle soul ^ ^ ^ 0.6 0.6 -1.5 0.1 1 normal @a
execute as @e[tag=projectile2] at @s positioned as @s unless block ^ ^ ^1 air run summon creeper ^ ^ ^2 {Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile2] at @s positioned as @s unless block ^ ^ ^1 air run kill @s
execute as @e[tag=projectile2,team=team1] at @s if entity @e[distance=..2,team=!team1] run summon creeper ^ ^ ^-1 {Team:"team1",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile2,team=team1] at @s if entity @e[distance=..2,team=!team1] run kill @s
execute as @e[tag=projectile2,team=team2] at @s if entity @e[distance=..2,team=!team2] run summon creeper ^ ^ ^-1 {Team:"team2",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[tag=projectile2,team=team2] at @s if entity @e[distance=..2,team=!team2] run kill @s
execute as @e[tag=projectile2] run scoreboard players add @s projtime 1
execute as @e[tag=projectile2] if score @s projtime matches 600.. run kill @s