fill ~-5 ~-10 ~-5 ~5 ~5 ~5 air replace emerald_block
fill ~-5 ~-10 ~-5 ~5 ~5 ~5 air replace amethyst_block
fill ~-5 ~-10 ~-5 ~5 ~5 ~5 air replace lime_glazed_terracotta
fill ~-5 ~-10 ~-5 ~5 ~5 ~5 air replace pink_glazed_terracotta
fill ~-5 ~-10 ~-5 ~5 ~5 ~5 air replace mushroom_stem
fill ~-5 ~-10 ~-5 ~5 ~5 ~5 air replace warped_nylium
fill ~-5 ~-10 ~-5 ~5 ~5 ~5 air replace pink_terracotta
fill ~-5 ~-10 ~-5 ~5 ~5 ~5 air replace purple_terracotta
fill ~-5 ~-10 ~-5 ~5 ~5 ~5 air replace green_terracotta
execute if entity @s[team=team1] run fill ~-3 ~ ~-3 ~3 ~ ~3 emerald_block replace air
execute if entity @s[team=team1] run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 lime_glazed_terracotta replace air
execute if entity @s[team=team1] run fill ~-2 ~ ~-2 ~2 ~ ~2 warped_nylium replace emerald_block
execute if entity @s[team=team1] run fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 green_terracotta replace air
execute if entity @s[team=team1] run fill ~-1 ~-2 ~-1 ~1 ~-10 ~1 mushroom_stem replace air

execute if entity @s[team=team2] run fill ~-3 ~ ~-3 ~3 ~ ~3 amethyst_block replace air
execute if entity @s[team=team2] run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 pink_glazed_terracotta replace air
execute if entity @s[team=team2] run fill ~-2 ~ ~-2 ~2 ~ ~2 pink_terracotta replace amethyst_block
execute if entity @s[team=team2] run fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 purple_terracotta replace air
execute if entity @s[team=team2] run fill ~-1 ~-2 ~-1 ~1 ~-10 ~1 mushroom_stem replace air
