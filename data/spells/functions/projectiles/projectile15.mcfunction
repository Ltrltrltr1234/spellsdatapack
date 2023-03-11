scoreboard players add @s projtime 1
execute at @s run tp @s ^ ^ ^-1
execute at @s run particle end_rod ~ ~ ~ 0 0 0 0.1 1 normal @a
execute at @s run particle dust_color_transition 1 1 1 2 0.8 1 0.6 ~ ~ ~ 0.3 0.3 0.3 0 3 normal @a
execute at @s run particle electric_spark ~ ~ ~ 0.3 0.3 0.3 0 10 normal @a
execute at @s run particle cloud ~ ~ ~ 0.1 0.1 0.1 0 3 normal @a
execute at @s unless block ^ ^ ^-0.5 air run playsound entity.elder_guardian.curse master @a ~ ~ ~ 0.6 2 0
execute at @s unless block ^ ^ ^-0.5 air run particle end_rod ^ ^ ^-0.5 0 0 0 0.3 30 normal @a
execute at @s unless block ^ ^ ^-0.5 air run particle electric_spark ^ ^ ^-0.5 1 1 1 0 100 normal @a
execute as @s[team=team1] at @s if entity @e[team=!team1,distance=..2] run effect give @e[team=!team1,distance=..2] instant_damage 1 0 true
execute as @s[team=team1] at @s if entity @e[team=!team1,distance=..2] run execute as @e[team=!team1,distance=..2] at @s if block ^ ^0.9 ^-1 air if block ^ ^1.5 ^-1 air run tp @s ^ ^ ^-1
execute as @s[team=team2] at @s if entity @e[team=!team2,distance=..2] run effect give @e[team=!team2,distance=..2] instant_damage 1 0 true
execute as @s[team=team2] at @s if entity @e[team=!team2,distance=..2] run execute as @e[team=!team2,distance=..2] at @s if block ^ ^0.9 ^-1 air if block ^ ^1.5 ^-1 air run tp @s ^ ^ ^-1
execute at @s unless block ^ ^ ^-0.5 air run summon creeper ^ ^ ^-1 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Overcharge Volt Beam","color":"#3BFFCB","bold":true,"italic":false}'}

execute at @s unless block ^ ^ ^-0.5 air run kill @s
execute if score @s projtime matches 15.. run kill @s
function spells:projectile15