execute as @a[scores={spell32time=1..}] at @s run playsound entity.ender_dragon.ambient master @a ~ ~ ~ 0.2 0.5
execute as @a[scores={spell32time=1..}] at @s run particle flame ~ ~ ~ 0.2 0 0.2 0.1 5 normal @a
execute as @a[scores={spell32time=1..}] at @s run particle large_smoke ~ ~ ~ 0.2 0 0.2 0.05 1 normal @a
execute as @a[scores={spell32time=1..}] at @s run particle lava ~ ~ ~ 0.2 0 0.2 0 1 normal @a
execute as @a[scores={spell32time=1..}] at @s run particle wax_on ~ ~ ~ 0.5 0 0.5 0 10 normal @a
execute as @a[scores={spell32time=1..}] at @s run effect give @s fire_resistance 3 0 true
execute as @a[scores={spell32time=1..}] at @s run effect give @s speed 3 0 true
execute as @a[scores={spell32time=1..}] at @s run effect give @s haste 3 0 true
execute as @a[scores={spell32time=1..}] at @s run effect give @s strength 3 0 true

execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s run tellraw @s {"text":"Erupting Soul activated.","color":"#960000","bold":true,"italic":false}
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s rotated ~ 0 run summon armor_stand ^ ^ ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["souleruption"],DisabledSlots:4144959}
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s rotated ~-72 0 run summon armor_stand ^ ^ ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["souleruption"],DisabledSlots:4144959}
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s rotated ~72 0 run summon armor_stand ^ ^ ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["souleruption"],DisabledSlots:4144959}
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s rotated ~-144 0 run summon armor_stand ^ ^ ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["souleruption"],DisabledSlots:4144959}
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s rotated ~144 0 run summon armor_stand ^ ^ ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["souleruption"],DisabledSlots:4144959}
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s run execute as @e[tag=souleruption,tag=!turneddirection,sort=nearest,limit=5] at @s run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1,scores={spell32time=1..}] feet
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s run execute as @e[tag=souleruption,tag=!turneddirection,sort=nearest,limit=5] at @s run tp @s ~ ~1 ~ ~ 0
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s run execute as @e[tag=souleruption,tag=!turneddirection,sort=nearest,limit=5] at @s run tag @s add turneddirection
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s run particle flame ~ ~ ~ 0 0 0 1 200 normal @a
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s run particle squid_ink ~ ~ ~ 0 0 0 1 100 normal @a
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s run playsound entity.piglin_brute.death master @a ~ ~ ~ 10 0.5
execute as @a[scores={spell32time=1..}] if predicate spells:sneaking at @s run scoreboard players set @s spell32time 0

execute as @e[tag=souleruption] at @s run scoreboard players add @s projtime 1
execute as @e[tag=souleruption] at @s run particle lava ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[tag=souleruption] at @s run particle flame ~ ~1 ~ 0 0.5 0 0 20 normal @a
execute as @e[tag=souleruption,scores={projtime=..10}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=souleruption,scores={projtime=11..}] at @s run tp @s ~ ~ ~ ~20 ~
execute as @e[tag=souleruption] at @s run particle dust_color_transition 0.8 0.2 0 2 0.4 0 0 ^ ^ ^3 0 0.1 0 0 5 normal @a
execute as @e[tag=souleruption,scores={projtime=11..}] at @s run tp @s ~ ~ ~ ~20 ~
execute as @e[tag=souleruption] at @s run particle dust_color_transition 0.8 0.2 0 2 0.4 0 0 ^ ^ ^3 0 0.1 0 0 5 normal @a
execute as @e[tag=souleruption,scores={projtime=41..}] at @s run playsound entity.blaze.death master @a ~ ~ ~ 0.5 0.5
execute as @e[tag=souleruption,scores={projtime=41..}] at @s run particle small_flame ~ ~ ~ 0 1 0 0.4 10 normal @a
execute as @e[tag=souleruption,scores={projtime=41..}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 fire replace air
execute as @e[tag=souleruption,scores={projtime=41..}] at @s run summon falling_block ^ ^1 ^ {BlockState:{Name:"minecraft:fire"},HasVisualFire:1b,Time:1,Motion:[0.0,1.2,0.0]}
execute as @e[tag=souleruption,scores={projtime=41..}] at @s run summon falling_block ^ ^1 ^1 {BlockState:{Name:"minecraft:fire"},HasVisualFire:1b,Time:1,Motion:[0.0,1.2,0.0]}
execute as @e[tag=souleruption,scores={projtime=41..}] at @s rotated ~30 ~ run summon falling_block ^ ^1 ^2 {BlockState:{Name:"minecraft:fire"},HasVisualFire:1b,Time:1,Motion:[0.0,1.2,0.0]}
execute as @e[tag=souleruption,scores={projtime=41}] at @s run summon creeper ~ ~1 ~ {CustomName:'{"text":"Soulflame Eruption","color":"#820000","bold":true}',Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:4b,Fuse:0,ignited:1b}
execute as @e[tag=souleruption,scores={projtime=60..}] at @s run kill @s