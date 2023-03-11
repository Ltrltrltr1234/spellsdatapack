execute as @e[scores={spell20timer=50..70}] at @s run playsound block.conduit.activate master @a ~ ~ ~ 0.5 0.5
execute as @e[scores={spell20timer=30..50}] at @s run playsound block.conduit.activate master @a ~ ~ ~ 2 2
execute as @e[scores={spell20timer=30..70}] at @s run particle glow ~ ~ ~ 0 0 0 0.1 10 normal @a
execute as @e[scores={spell20timer=30..50}] at @s run particle firework ~ ~ ~ 0 0 0 0.4 20 normal @a
execute as @e[scores={spell20timer=30}] at @s run playsound item.totem.use master @a ~ ~ ~ 3 2 0
execute as @e[scores={spell20timer=1..}] at @s run scoreboard players set @s spell20bc 0
execute as @e[scores={spell20timer=1..}] at @s positioned ~ ~2 ~ if block ^ ^ ^1 air if block ^ ^ ^2 air run scoreboard players set @s spell20bc 1
execute as @e[scores={spell20timer=1..,spell20bc=1}] at @s positioned ~ ~2 ~ if block ^ ^ ^3 air if block ^ ^ ^4 air if block ^ ^ ^5 air run scoreboard players set @s spell20bc 2
execute as @e[scores={spell20timer=1..,spell20bc=2}] at @s positioned ~ ~2 ~ if block ^ ^ ^6 air if block ^ ^ ^7 air if block ^ ^ ^8 air run scoreboard players set @s spell20bc 3
execute as @e[scores={spell20timer=1..,spell20bc=3}] at @s positioned ~ ~2 ~ if block ^ ^ ^9 air if block ^ ^ ^10 air if block ^ ^ ^11 air run scoreboard players set @s spell20bc 4
execute as @e[scores={spell20timer=1..,spell20bc=4}] at @s positioned ~ ~2 ~ if block ^ ^ ^12 air if block ^ ^ ^13 air if block ^ ^ ^14 air run scoreboard players set @s spell20bc 5

execute as @e[scores={spell20timer=1..}] at @s positioned ~ ~2 ~ run scoreboard players remove @s spell20timer 1
execute as @e[scores={spell20timer=1..30}] at @s positioned ~ ~2 ~ run playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.3 2 0
execute as @e[scores={spell20timer=1..30,spell20bc=1..}] at @s positioned ~ ~2 ~ run particle end_rod ^ ^ ^2 0.8 0.8 0.8 0 10 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=2..}] at @s positioned ~ ~2 ~ run particle end_rod ^ ^ ^5 0.8 0.8 0.8 0 8 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=3..}] at @s positioned ~ ~2 ~ run particle end_rod ^ ^ ^8 0.8 0.8 0.8 0 4 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=4..}] at @s positioned ~ ~2 ~ run particle end_rod ^ ^ ^11 0.8 0.8 0.8 0 2 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=5..}] at @s positioned ~ ~2 ~ run particle end_rod ^ ^ ^14 0.8 0.8 0.8 0 2 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=1..}] at @s positioned ~ ~2 ~ run particle glow ^ ^ ^2 1.2 1.2 1.2 0.5 30 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=2..}] at @s positioned ~ ~2 ~ run particle glow ^ ^ ^5 1.2 1.2 1.2 0.5 15 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=3..}] at @s positioned ~ ~2 ~ run particle glow ^ ^ ^8 1.2 1.2 1.2 0.5 7 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=4..}] at @s positioned ~ ~2 ~ run particle glow ^ ^ ^11 1.2 1.2 1.2 0.5 3 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=5..}] at @s positioned ~ ~2 ~ run particle glow ^ ^ ^14 0.8 0.8 0.8 0 4 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=1..}] at @s positioned ~ ~2 ~ run particle explosion ^ ^ ^2 0.4 0.4 0.4 0 3 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=2..}] at @s positioned ~ ~2 ~ run particle explosion ^ ^ ^5 0.4 0.4 0.4 0 2 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=3..}] at @s positioned ~ ~2 ~ run particle explosion ^ ^ ^8 0.4 0.4 0.4 0 2 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=4..}] at @s positioned ~ ~2 ~ run particle explosion ^ ^ ^11 0 0 0 0 1 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=5..}] at @s positioned ~ ~2 ~ run particle explosion ^ ^ ^14 0 0 0 0 1 normal @a
execute as @e[scores={spell20timer=1..30,spell20bc=1..},team=team2] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^2 run effect give @e[team=!team2,distance=..3] instant_damage 1 0
execute as @e[scores={spell20timer=1..30,spell20bc=2..},team=team2] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^5 run effect give @e[team=!team2,distance=..3] instant_damage 1 0
execute as @e[scores={spell20timer=1..30,spell20bc=3..},team=team2] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^8 run effect give @e[team=!team2,distance=..3] instant_damage 1 0
execute as @e[scores={spell20timer=1..30,spell20bc=4..},team=team2] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^11 run effect give @e[team=!team2,distance=..3] instant_damage 1 0
execute as @e[scores={spell20timer=1..30,spell20bc=5..},team=team2] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^14 run effect give @e[team=!team2,distance=..3] instant_damage 1 0
execute as @e[scores={spell20timer=1..30,spell20bc=1..},team=team1] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^2 run effect give @e[team=!team1,distance=..3] instant_damage 1 0
execute as @e[scores={spell20timer=1..30,spell20bc=2..},team=team1] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^5 run effect give @e[team=!team1,distance=..3] instant_damage 1 0
execute as @e[scores={spell20timer=1..30,spell20bc=3..},team=team1] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^8 run effect give @e[team=!team1,distance=..3] instant_damage 1 0
execute as @e[scores={spell20timer=1..30,spell20bc=4..},team=team1] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^11 run effect give @e[team=!team1,distance=..3] instant_damage 1 0
execute as @e[scores={spell20timer=1..30,spell20bc=5..},team=team1] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^14 run effect give @e[team=!team1,distance=..3] instant_damage 1 0
execute as @e[scores={spell20timer=1..30,spell20bc=1..},team=team1] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^2 run execute as @e[team=!team1,distance=..4] at @s facing entity @e[scores={spell20timer=1..30},team=team1,limit=1] feet if block ^ ^1 ^-1 air run tp @s ^ ^ ^-0.3
execute as @e[scores={spell20timer=1..30,spell20bc=2..},team=team1] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^5 run execute as @e[team=!team1,distance=..4] at @s facing entity @e[scores={spell20timer=1..30},team=team1,limit=1] feet if block ^ ^1 ^-0.9 air run tp @s ^ ^ ^-0.3
execute as @e[scores={spell20timer=1..30,spell20bc=3..},team=team1] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^8 run execute as @e[team=!team1,distance=..4] at @s facing entity @e[scores={spell20timer=1..30},team=team1,limit=1] feet if block ^ ^1 ^-0.7 air run tp @s ^ ^ ^-0.2
execute as @e[scores={spell20timer=1..30,spell20bc=4..},team=team1] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^11 run execute as @e[team=!team1,distance=..4] at @s facing entity @e[scores={spell20timer=1..30},team=team1,limit=1] feet if block ^ ^1 ^-0.5 air run tp @s ^ ^ ^-0.2
execute as @e[scores={spell20timer=1..30,spell20bc=5..},team=team1] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^14 run execute as @e[team=!team1,distance=..4] at @s facing entity @e[scores={spell20timer=1..30},team=team1,limit=1] feet if block ^ ^1 ^-0.3 air run tp @s ^ ^ ^-0.1
execute as @e[scores={spell20timer=1..30,spell20bc=1..},team=team2] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^2 run execute as @e[team=!team2,distance=..4] at @s facing entity @e[scores={spell20timer=1..30},team=team2,limit=1] feet if block ^ ^1 ^-1 air run tp @s ^ ^ ^-0.3
execute as @e[scores={spell20timer=1..30,spell20bc=2..},team=team2] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^5 run execute as @e[team=!team2,distance=..4] at @s facing entity @e[scores={spell20timer=1..30},team=team2,limit=1] feet if block ^ ^1 ^-0.9 air run tp @s ^ ^ ^-0.3
execute as @e[scores={spell20timer=1..30,spell20bc=3..},team=team2] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^8 run execute as @e[team=!team2,distance=..4] at @s facing entity @e[scores={spell20timer=1..30},team=team2,limit=1] feet if block ^ ^1 ^-0.7 air run tp @s ^ ^ ^-0.2
execute as @e[scores={spell20timer=1..30,spell20bc=4..},team=team2] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^11 run execute as @e[team=!team2,distance=..4] at @s facing entity @e[scores={spell20timer=1..30},team=team2,limit=1] feet if block ^ ^1 ^-0.5 air run tp @s ^ ^ ^-0.2
execute as @e[scores={spell20timer=1..30,spell20bc=5..},team=team2] at @s positioned ~ ~2 ~ at @s positioned ^ ^ ^14 run execute as @e[team=!team2,distance=..4] at @s facing entity @e[scores={spell20timer=1..30},team=team2,limit=1] feet if block ^ ^1 ^-0.3 air run tp @s ^ ^ ^-0.1