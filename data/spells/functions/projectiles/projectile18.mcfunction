execute as @e[tag=projectile18] run scoreboard players add @s projtime 1
execute as @e[tag=projectile18,scores={projtime=1}] run scoreboard players set @s spell26aim 1
execute as @e[tag=projectile18,scores={projtime=0..9,spell26aim=..1}] at @s run tp @s ^ ^ ^-0.1
execute as @e[tag=projectile18,scores={projtime=10..19,spell26aim=..1}] at @s run tp @s ^ ^ ^-0.2
execute as @e[tag=projectile18,scores={projtime=20..29,spell26aim=..1}] at @s run tp @s ^ ^ ^-0.4
execute as @e[tag=projectile18,scores={projtime=30..,spell26aim=..1}] at @s run tp @s ^ ^ ^-0.7
execute as @e[tag=projectile18,tag=boosted,scores={spell26aim=..1}] at @s run tp @s ^ ^ ^-0.5
execute as @e[tag=projectile18,scores={projtime=0..9,spell26aim=2..}] at @s run tp @s ^ ^ ^0.1
execute as @e[tag=projectile18,scores={projtime=10..19,spell26aim=2..}] at @s run tp @s ^ ^ ^0.2
execute as @e[tag=projectile18,scores={projtime=20..29,spell26aim=2..}] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=projectile18,scores={projtime=30..,spell26aim=2..}] at @s run tp @s ^ ^ ^0.7
execute as @e[tag=projectile18,tag=boosted,scores={spell26aim=2..}] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=projectile18,tag=boosted] at @s run particle electric_spark ~ ~ ~ 0.6 0.6 0.6 0 10 normal @a
execute as @e[tag=projectile18] at @s run particle dust 0.5 0.5 0.7 2 ^ ^ ^ 0.2 0.2 0.2 0 15 normal @a
execute as @e[tag=projectile18] at @s run particle dust 0.5 0.5 0.9 2 ^ ^ ^ 0.6 0.6 0.6 0 2 normal @a
execute as @e[tag=projectile18,team=team1] at @s if entity @e[tag=!nullshockimmune,type=armor_stand,distance=4..5,team=team1] run particle dust 0.5 0.5 0.9 3 ^ ^ ^ 0.5 0.5 0.5 0 10 normal @a
execute as @e[tag=projectile18,team=team1,scores={spell26aim=1}] at @s if entity @e[tag=!nullshockimmune,type=armor_stand,distance=..5,team=team1] run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=projectile18,team=team1,scores={spell26aim=1}] at @s if entity @e[tag=!nullshockimmune,type=armor_stand,distance=..5,team=team1] run tp @s ~ ~ ~ facing entity @a[team=team1,sort=nearest,limit=1] eyes
execute as @e[tag=projectile18,team=team1,scores={spell26aim=1}] at @s if entity @e[tag=!nullshockimmune,type=armor_stand,distance=..5,team=team1] run scoreboard players set @s spell26aim 2
execute as @e[tag=projectile18,team=team2,scores={spell26aim=1}] at @s if entity @e[tag=!nullshockimmune,type=armor_stand,distance=..5,team=team2] run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=projectile18,team=team2,scores={spell26aim=1}] at @s if entity @e[tag=!nullshockimmune,type=armor_stand,distance=..5,team=team2] run tp @s ~ ~ ~ facing entity @a[team=team2,sort=nearest,limit=1] eyes
execute as @e[tag=projectile18,team=team2,scores={spell26aim=1}] at @s if entity @e[tag=!nullshockimmune,type=armor_stand,distance=..5,team=team2] run scoreboard players set @s spell26aim 2
execute as @e[tag=projectile18,team=team2] at @s if entity @e[tag=!nullshockimmune,type=armor_stand,distance=4..5,team=team2] run particle dust 0.5 0.5 0.9 3 ^ ^ ^ 0.5 0.5 0.5 0 10 normal @a
execute as @e[tag=projectile18,team=team1] at @s if entity @e[tag=!nullshockimmune,type=armor_stand,distance=4..5,team=team1] run playsound entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 2
execute as @e[tag=projectile18,team=team1] at @s run tp @e[tag=!nullshockimmune,type=armor_stand,distance=..5,team=team1] @s
execute as @e[tag=projectile18,team=team2] at @s if entity @e[tag=!nullshockimmune,type=armor_stand,distance=4..5,team=team2] run playsound entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 2
execute as @e[tag=projectile18,team=team2] at @s run tp @e[tag=!nullshockimmune,type=armor_stand,distance=..5,team=team2] @s
execute as @e[tag=projectile18] at @s unless block ^ ^ ^-0.3 air run tag @s add projdeadlol
execute as @e[tag=projectile18] at @s unless block ^ ^ ^0.3 air run tag @s add projdeadlol
execute as @e[tag=projectile18,team=team1,scores={spell26aim=2}] at @s if entity @a[distance=..5,team=team1] run tp @s ~ ~ ~ facing entity @a[team=team1,sort=nearest,limit=1] eyes
execute as @e[tag=projectile18,team=team1,scores={spell26aim=2}] at @s if entity @a[distance=..5,team=team1] run scoreboard players set @s spell26aim 3
execute as @e[tag=projectile18,team=team2,scores={spell26aim=2}] at @s if entity @a[distance=..5,team=team2] run tp @s ~ ~ ~ facing entity @a[team=team2,sort=nearest,limit=1] eyes
execute as @e[tag=projectile18,team=team2,scores={spell26aim=2}] at @s if entity @a[distance=..5,team=team2] run scoreboard players set @s spell26aim 3
execute as @e[tag=projectile18,team=team1] at @s if entity @a[distance=..2,team=team1] run tag @s add projdeadlol
execute as @e[tag=projectile18,team=team2] at @s if entity @a[distance=..2,team=team2] run tag @s add projdeadlol
execute as @e[tag=projectile18] if score @s projtime matches 100.. run tag @s add projdeadlol
execute as @e[tag=projectile18,tag=projdeadlol] at @s run playsound entity.evoker.prepare_summon master @a ~ ~ ~ 5 2
execute as @e[tag=projectile18,tag=projdeadlol] at @s run particle cloud ~ ~ ~ 0 0 0 0.5 40 normal @a
execute as @e[tag=projectile18,tag=projdeadlol] at @s run particle falling_dripstone_water ~ ~ ~ 1 1 1 0 100 normal @a
execute as @e[tag=projectile18,tag=projdeadlol] at @s run particle dust 0.5 0.5 0.9 2 ^ ^ ^ 2 2 2 0 200 normal @a
execute as @e[tag=projectile18,tag=projdeadlol] at @s run kill @s