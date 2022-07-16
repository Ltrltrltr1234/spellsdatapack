execute as @e[scores={spell22blades=1..}] at @s positioned ~ ~ ~-2 unless entity @e[distance=..2,tag=spell22blade1] run summon armor_stand ~ ~ ~-2 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["spell22blade1","spellblade"],DisabledSlots:4144959,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Enchantments:[{}]}},{}],Pose:{RightArm:[269f,0f,0f]}}
execute as @e[scores={spell22blades=2..}] at @s positioned ~-2 ~ ~ unless entity @e[distance=..2,tag=spell22blade2] run summon armor_stand ~-2 ~ ~ {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["spell22blade2","spellblade"],DisabledSlots:4144959,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Enchantments:[{}]}},{}],Pose:{RightArm:[269f,0f,0f]}}
execute as @e[scores={spell22blades=3..}] at @s positioned ~2 ~ ~ unless entity @e[distance=..2,tag=spell22blade3] run summon armor_stand ~2 ~ ~ {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["spell22blade3","spellblade"],DisabledSlots:4144959,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Enchantments:[{}]}},{}],Pose:{RightArm:[269f,0f,0f]}}
execute as @e[scores={spell22blades=4..}] at @s positioned ~-1 ~ ~2 unless entity @e[distance=..2,tag=spell22blade4] run summon armor_stand ~-1 ~ ~2 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["spell22blade4","spellblade"],DisabledSlots:4144959,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Enchantments:[{}]}},{}],Pose:{RightArm:[269f,0f,0f]}}
execute as @e[scores={spell22blades=5..}] at @s positioned ~1 ~ ~2 unless entity @e[distance=..2,tag=spell22blade5] run summon armor_stand ~1 ~ ~2 {Team:"team1",NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["spell22blade5","spellblade"],DisabledSlots:4144959,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Enchantments:[{}]}},{}],Pose:{RightArm:[269f,0f,0f]}}
execute as @e[tag=spell22blade1] at @s positioned ~ ~ ~2 positioned as @e[distance=..3,scores={spell22blades=1..}] run tp @s ~ ~ ~-2
execute as @e[tag=spell22blade2] at @s positioned ~2 ~ ~ positioned as @e[distance=..3,scores={spell22blades=2..}] run tp @s ~-2 ~ ~
execute as @e[tag=spell22blade3] at @s positioned ~-2 ~ ~ positioned as @e[distance=..3,scores={spell22blades=3..}] run tp @s ~2 ~ ~
execute as @e[tag=spell22blade4] at @s positioned ~1 ~ ~-2 positioned as @e[distance=..3,scores={spell22blades=4..}] run tp @s ~-1 ~ ~2
execute as @e[tag=spell22blade5] at @s positioned ~-1 ~ ~-2 positioned as @e[distance=..3,scores={spell22blades=5..}] run tp @s ~1 ~ ~2
execute as @e[tag=spell22blade1] at @s positioned ~ ~ ~2 unless entity @e[distance=..2,scores={spell22blades=1..}] run kill @s
execute as @e[tag=spell22blade2] at @s positioned ~2 ~ ~ unless entity @e[distance=..2,scores={spell22blades=2..}] run kill @s
execute as @e[tag=spell22blade3] at @s positioned ~-2 ~ ~ unless entity @e[distance=..2,scores={spell22blades=3..}] run kill @s
execute as @e[tag=spell22blade4] at @s positioned ~1 ~ ~-2 unless entity @e[distance=..2,scores={spell22blades=4..}] run kill @s
execute as @e[tag=spell22blade5] at @s positioned ~-1 ~ ~-2 unless entity @e[distance=..2,scores={spell22blades=5..}] run kill @s
execute as @e[tag=spellblade] at @s run particle portal ^-0.25 ^1.5 ^0.5 0 0 0 0.1 5 normal @a
execute as @e[tag=spellblade] at @s run tp @s ~ ~ ~ ~10 ~

execute as @e[scores={spell22blades=1..}] if score @s hp > @s hp_prev at @s run scoreboard players operation @s hp_prev = @s hp
execute as @e[scores={spell22blades=1..}] if score @s hp < @s hp_prev run tellraw @s {"text":"You've lost a blade! (4s invulnerability and AOE wither)","color":"#FF4F4F","bold":true}
execute as @e[scores={spell22blades=1..}] if score @s hp < @s hp_prev at @s run playsound entity.wither_skeleton.death master @a ~ ~ ~ 2 2 0
execute as @e[scores={spell22blades=1..}] if score @s hp < @s hp_prev at @s run particle large_smoke ~ ~ ~ 4 0 4 0 300 normal @a
execute as @e[scores={spell22blades=1..}] if score @s hp < @s hp_prev at @s run effect give @s resistance 4 4
execute as @e[scores={spell22blades=1..},team=team1] if score @s hp < @s hp_prev at @s run effect give @e[team=!team1,distance=..7] wither 5 0
execute as @e[scores={spell22blades=1..},team=team2] if score @s hp < @s hp_prev at @s run effect give @e[team=!team2,distance=..7] wither 5 0
execute as @e[scores={spell22blades=1..}] if score @s hp < @s hp_prev run scoreboard players remove @s spell22blades 1
execute as @e[scores={spell22blades=1..}] if score @s hp < @s hp_prev at @s run scoreboard players operation @s hp_prev = @s hp