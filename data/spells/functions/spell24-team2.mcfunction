execute as @s[scores={rightclick=1..}] at @s run scoreboard players set @s spell24kbtimer 30
execute as @s[scores={rightclick=1..}] at @s run tag @e[tag=projectile18,team=team1,distance=..5] add boosted
execute as @s[scores={rightclick=1..}] at @s run execute as @e[type=armor_stand,distance=..5,team=!team2,tag=!nullshockimmune] at @s run playsound item.shield.block master @a ~ ~ ~ 1 0.5
execute as @s[scores={rightclick=1..}] at @s run execute as @e[type=armor_stand,distance=..5,team=!team2,tag=!nullshockimmune] at @s run playsound block.fire.extinguish master @a ~ ~ ~ 2 2
execute as @s[scores={rightclick=1..}] at @s run execute as @e[type=armor_stand,distance=..5,team=!team2,tag=!nullshockimmune] at @s run particle cloud ~ ~ ~ 0 0 0 0.1 40 normal @a
execute as @s[scores={rightclick=1..}] at @s run execute as @e[type=armor_stand,distance=..5,team=!team2,tag=!nullshockimmune] at @s run kill @s
execute as @s[scores={rightclick=1..}] at @s run execute as @e[distance=..5,team=!team2] at @s run scoreboard players set @s spell24kbtargettimer 30
execute as @s[scores={rightclick=1..}] at @s run summon area_effect_cloud ~ ~0.1 ~ {Particle:"firework",NoGravity:1b,Radius:1f,RadiusPerTick:1f,Duration:10}
execute as @s[scores={rightclick=1..}] at @s run summon area_effect_cloud ~ ~0.1 ~ {Particle:"electric_spark",NoGravity:1b,Radius:1f,RadiusPerTick:1f,Duration:15}
execute as @s[scores={rightclick=1..}] at @s run particle dust 1 1 0.5 3 ~ ~ ~ 3 3 3 0 300 normal @a
execute as @s[scores={rightclick=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.5 300 normal @a
execute as @s[scores={rightclick=1..}] at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ 5 2
execute as @s[scores={rightclick=1..}] at @s run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 5 1.5
execute as @s[scores={rightclick=1..}] at @s run particle snowflake ~ ~ ~ 0 0 0 0.5 100 normal @a
execute as @s[scores={rightclick=1..}] run tellraw @s {"text":"You used Nullification Shock! (-40 Mana)","color":"#FBFFC7","bold":true}
execute as @s[scores={rightclick=1..}] run scoreboard players remove @s mana 40