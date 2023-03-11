execute as @e[scores={spell29charge=1..100}] if score @s hp matches ..0 at @s run scoreboard players reset @s spell29charge
execute as @e[scores={spell29charge=1..100}] run scoreboard players remove @s spell29charge 1
execute as @e[scores={spell29charge=1..100}] run scoreboard players set @s stuntime 10
execute as @e[scores={spell29charge=99}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1
execute as @e[scores={spell29charge=89}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1
execute as @e[scores={spell29charge=79}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1
execute as @e[scores={spell29charge=69}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1
execute as @e[scores={spell29charge=59}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1
execute as @e[scores={spell29charge=54}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1
execute as @e[scores={spell29charge=49}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1
execute as @e[scores={spell29charge=44}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1
execute as @e[scores={spell29charge=39}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1.2
execute as @e[scores={spell29charge=37}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1.2
execute as @e[scores={spell29charge=35}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1.5
execute as @e[scores={spell29charge=16..35}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 1.5
execute as @e[scores={spell29charge=1..15}] at @s run playsound block.beacon.activate master @a ~ ~ ~ 5 2
execute as @e[scores={spell29charge=1..100}] at @s unless entity @e[distance=..3,tag=spell29circle] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["spell29circle","nullshockimmune"],DisabledSlots:4144959}

execute as @e[tag=spell29circle] at @s positioned as @e[distance=..3,scores={spell29charge=1..100}] run tp @s ~ ~ ~
execute as @e[tag=spell29circle] at @s positioned ~ ~ ~ unless entity @e[distance=..3,scores={spell29charge=1..100}] run kill @s
scoreboard players reset @a spell29counter
execute as @e[scores={spell29charge=1..100}] at @s run execute as @e[tag=spell29circle,distance=..3] run scoreboard players add @a[sort=nearest,limit=1,scores={spell29charge=1..100}] spell29counter 1
execute as @a[scores={spell29counter=2..}] at @s run kill @e[tag=spell29circle,distance=..3]

execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=60..100}] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=40..59}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=20..39}] at @s run tp @s ~ ~ ~ ~21 ~
execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=10..19}] at @s run tp @s ~ ~ ~ ~17 ~
execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=1..9}] at @s run tp @s ~ ~ ~ ~23 ~
execute as @e[tag=spell29circle] at @s run particle electric_spark ^ ^1 ^3 0.2 0 0.2 0 6 normal @a
execute as @e[tag=spell29circle] at @s run particle electric_spark ^ ^1 ^-3 0.2 0 0.2 0 6 normal @a
execute as @e[tag=spell29circle] at @s run particle dust 1 0.337 0.847 2 ^ ^1 ^3 0.2 0.2 0.2 0.1 1 normal @a
execute as @e[tag=spell29circle] at @s run particle dust 1 0.337 0.847 2 ^ ^1 ^-3 0.2 0.2 0.2 0.1 1 normal @a
execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=10..19}] at @s run tp @s ~ ~ ~ ~17 ~
execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=1..9}] at @s run tp @s ~ ~ ~ ~23 ~
execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=1..19}] run particle electric_spark ^ ^1 ^3 0.2 0 0.2 0 6 normal @a
execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=1..19}] run particle electric_spark ^ ^1 ^-3 0.2 0 0.2 0 6 normal @a
execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=1..19}] run particle dust 1 0.8 0.953 3 ^ ^1 ^3 0.3 0.3 0.3 0.1 1 normal @a
execute as @e[tag=spell29circle] at @s if entity @e[distance=..3,scores={spell29charge=1..19}] run particle dust 1 0.8 0.953 3 ^ ^1 ^-3 0.3 0.3 0.3 0.1 1 normal @a

execute as @e[scores={spell29charge=1..100}] if score @s hp < @s hp_prev at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 3 0.5
execute as @e[scores={spell29charge=1..100}] if score @s hp < @s hp_prev at @s run particle large_smoke ~ ~ ~ 2 0 2 0.05 10 normal @a
execute as @e[scores={spell29charge=1..100}] if score @s hp < @s hp_prev run scoreboard players reset @s spell29charge

execute as @e[scores={spell29charge=0}] run effect give @s instant_health 1 1
execute as @e[scores={spell29charge=0}] at @s run particle cloud ~ ~ ~ 0 1 0 0.5 60 normal @a
execute as @e[scores={spell29charge=0}] at @s run particle end_rod ~ ~ ~ 0 1 0 0.5 100 normal @a
execute as @e[scores={spell29charge=0}] at @s run playsound item.trident.thunder master @a ~ ~ ~ 2 0.75
execute as @e[scores={spell29charge=0}] run scoreboard players reset @s spell29charge