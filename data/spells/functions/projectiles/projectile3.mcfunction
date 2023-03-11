execute at @s run tp @s ^ ^ ^-1
execute at @s positioned as @s run particle snowflake ^ ^ ^ 0.1 0.1 0.1 0 2 normal @a
execute at @s positioned as @s run particle item_snowball ^ ^ ^ 0 0 0 0 1 normal @a
execute at @s positioned as @s unless block ^ ^ ^1 air run fill ~ ~1 ~ ~ ~4 ~ ice replace air
execute at @s positioned as @s unless block ^ ^ ^1 air run playsound block.glass.break master @a ~ ~ ~ 1 2
execute at @s positioned as @s unless block ^ ^ ^1 air run kill @s
execute run scoreboard players add @s projtime 1
execute if score @s projtime matches 5.. run kill @s