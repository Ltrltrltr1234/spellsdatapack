execute as @a[scores={mana=..499}] run scoreboard players add @s mana 1
execute as @a[scores={spell8timer=1..,mana=..499}] at @s run scoreboard players add @s mana 1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b}}}] run title @s actionbar [{"text":"Mana: ","color":"#00FFF7"},{"score":{"name":"*","objective":"mana"},"color":"#00FFF7","bold":true},{"text":"/500","color":"#00FFF7","bold":true}]

execute as @e unless score @s focus matches 1.. run scoreboard players set @s focus 0
execute as @e[scores={focus=1..}] run scoreboard players add @s beamtimer 1
execute as @e[scores={focus=1..,beamtimer=20..}] run scoreboard players set @s beamtimer 0

execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:1}}},scores={mana=300..}] run function spells:spell1-galesblessing
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:2}}},scores={mana=50..}] run function spells:spell2-terramancy
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..},team=team1] run function spells:spell3-blazingenergy-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..},team=team2] run function spells:spell3-blazingenergy-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:4}}},scores={mana=120..},team=team1] run function spells:spell4-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:4}}},scores={mana=120..},team=team2] run function spells:spell4-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:5}}},scores={mana=250..},team=team1] run function spells:spell5-spiritualvitality-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:5}}},scores={mana=250..},team=team2] run function spells:spell5-spiritualvitality-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={mana=50..}] run function spells:spell6-instanttransmission
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:7}}},scores={mana=230..},team=team1] run function spells:spell7-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:7}}},scores={mana=230..},team=team2] run function spells:spell7-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:8}}},scores={mana=200..}] run function spells:spell8
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:9}}}] run function spells:spell9
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:10}}},scores={mana=120..}] run function spells:spell10
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:11}}},scores={mana=120..},team=team1] run function spells:spell11-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:11}}},scores={mana=120..},team=team2] run function spells:spell11-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:12}}},scores={mana=70..},team=team1] run function spells:spell12-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:12}}},scores={mana=70..},team=team2] run function spells:spell12-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:13}}},scores={mana=240..}] run function spells:spell13
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:14}}},scores={mana=30..},team=team1] run function spells:spell14-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:14}}},scores={mana=30..},team=team2] run function spells:spell14-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:15}}},team=team1] run function spells:spell15-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:15}}},team=team2] run function spells:spell15-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:16}}},team=team1] run function spells:spell16-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:16}}},team=team2] run function spells:spell16-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:17}}},team=team1] run function spells:spell17-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:17}}},team=team2] run function spells:spell17-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:18}}},scores={mana=50..}] run function spells:spell18
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:19}}},scores={mana=80..},team=team1] run function spells:spell19-team1
scoreboard players set @a rightclick 0

scoreboard players add >>beamdmg beamdmg 1
execute if score >>beamdmg beamdmg matches 7.. run scoreboard players set >>beamdmg beamdmg 0
scoreboard players add >>beamdmg beamdelay 1
execute if score >>beamdmg beamdelay matches 2.. run scoreboard players set >>beamdmg beamdelay 0

function spells:terramancy
function spells:shadowblock
function spells:projectile1
function spells:projectile2
function spells:healingcircle
function spells:projectile3
function spells:manaeffect
function spells:projectile4
function spells:projectile5
function spells:spectralbulwark
function spells:projectile6
function spells:projectile7
function spells:projectile8
function spells:projectile9
function spells:projectile10
function spells:projectile11n12
function spells:projectile13
function spells:damagerprojectile
function spells:cloudburst