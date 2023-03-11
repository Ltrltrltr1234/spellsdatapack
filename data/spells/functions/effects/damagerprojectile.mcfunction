execute as @e[tag=damager1] at @s facing entity @e[type=!arrow,team=!team1,sort=nearest,limit=1,distance=..5] eyes rotated ~ ~-30 run function spells:projectile-motion
execute as @e[tag=damager2] at @s facing entity @e[type=!arrow,team=!team2,sort=nearest,limit=1,distance=..5] eyes rotated ~ ~-30 run function spells:projectile-motion
execute as @e[tag=damager1] at @s unless entity @e[type=!arrow,team=!team1,sort=nearest,limit=1,distance=..5] run kill
execute as @e[tag=damager2] at @s unless entity @e[type=!arrow,team=!team2,sort=nearest,limit=1,distance=..5] run kill
execute as @e[tag=damager1] at @s run scoreboard players add @s projtime 1
execute as @e[tag=damager2] at @s run scoreboard players add @s projtime 1
execute as @e[tag=damager1,scores={projtime=30..}] run kill
execute as @e[tag=damager2,scores={projtime=30..}] run kill