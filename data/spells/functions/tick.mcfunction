execute as @a[scores={mana=..499}] run scoreboard players add @s mana 1
execute as @a[scores={spell8timer=1..,mana=..499}] at @s run scoreboard players add @s mana 1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b}}}] run title @s actionbar [{"text":"Mana: ","color":"#00FFF7"},{"score":{"name":"*","objective":"mana"},"color":"#00FFF7","bold":true},{"text":"/500","color":"#00FFF7","bold":true}]

execute as @e unless score @s focus matches 1.. run scoreboard players set @s focus 0
execute as @e[scores={focus=1..}] run scoreboard players add @s beamtimer 1
execute as @e[scores={focus=1..,beamtimer=20..}] run scoreboard players set @s beamtimer 0

execute as @a run attribute @s generic.movement_speed modifier remove dc6aa835-3701-43ba-9f43-4c3aef1dbbeb
execute as @a[scores={stuntime=1..}] run attribute @s generic.movement_speed modifier add dc6aa835-3701-43ba-9f43-4c3aef1dbbeb "stun" -1 multiply
execute as @a[scores={stuntime=1..}] at @s if block ~ ~-0.2 ~ air run tp @s ~ ~-0.6 ~
execute as @a[scores={stuntime=1..}] run scoreboard players remove @s stuntime 1

execute as @a if score @s hp > @s hp_prev at @s run scoreboard players operation @s hp_prev = @s hp

function spells:spellcatalogue

execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:1}}},scores={mana=300..}] run function spells:spell1-galesblessing
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:2}}},scores={mana=50..}] run function spells:spell2-terramancy
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..},team=team1] run function spells:spell3-blazingenergy-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:3}}},scores={mana=40..},team=team2] run function spells:spell3-blazingenergy-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:4}}},scores={mana=120..},team=team1] run function spells:spell4-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:4}}},scores={mana=120..},team=team2] run function spells:spell4-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:5}}},scores={mana=250..},team=team1] run function spells:spell5-spiritualvitality-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:5}}},scores={mana=250..},team=team2] run function spells:spell5-spiritualvitality-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:6}}},scores={mana=50..}] run function spells:spell6-instanttransmission
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:7}}},scores={mana=150..},team=team1] run function spells:spell7-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:7}}},scores={mana=150..},team=team2] run function spells:spell7-team2
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
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:19}}},scores={mana=200..},team=team1] run function spells:spell19-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:19}}},scores={mana=200..},team=team2] run function spells:spell19-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:20}}},scores={mana=400..}] run function spells:spell20
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:21}}},scores={mana=100..},team=team1] run function spells:spell21-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:21}}},scores={mana=100..},team=team2] run function spells:spell21-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:22}}},scores={mana=100..}] run function spells:spell22
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:23}}},team=team1] run function spells:spell23-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:23}}},team=team2] run function spells:spell23-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:24}}},scores={mana=40..},team=team1] run function spells:spell24-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:24}}},scores={mana=40..},team=team2] run function spells:spell24-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:25}}},team=team1] run function spells:spell25-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:25}}},team=team2] run function spells:spell25-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:26}}},scores={mana=60..},team=team1] run function spells:spell26-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:26}}},scores={mana=60..},team=team2] run function spells:spell26-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:27}}},scores={mana=150..}] run function spells:spell27
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}},scores={mana=320..},team=team1] run function spells:spell28-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:28}}},scores={mana=320..},team=team2] run function spells:spell28-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:29}}},scores={mana=160..}] run function spells:spell29
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:30}}},scores={mana=50..},team=team1] run function spells:spell30-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:30}}},scores={mana=50..},team=team2] run function spells:spell30-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:31}}},scores={mana=250..},team=team1] run function spells:spell31-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:31}}},scores={mana=250..},team=team2] run function spells:spell31-team2
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:32}}},scores={mana=300..}] run function spells:spell32
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:33}}},scores={mana=180..},team=team1] run function spells:spell33-team1
execute as @e[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{wand:1b,spell:33}}},scores={mana=180..},team=team2] run function spells:spell33-team2
scoreboard players set @a rightclick 0

scoreboard players add >>beamdmg beamdmg 1
execute if score >>beamdmg beamdmg matches 7.. run scoreboard players set >>beamdmg beamdmg 0
scoreboard players add >>beamdmg beamdelay 1
execute if score >>beamdmg beamdelay matches 2.. run scoreboard players set >>beamdmg beamdelay 0

execute as @a[scores={hp=..0}] run scoreboard players set @s mana 500
execute as @a[scores={hp=..0}] run scoreboard players set @s spell30charge 0

function spells:effects/terramancy
function spells:effectsshadowblock
function spells:projectiles/projectile1
function spells:projectiles/projectile2
function spells:effectshealingcircle
execute as @e[tag=projectile3] at @s run function spells:projectiles/projectile3
function spells:effectsmanaeffect
function spells:projectiles/projectile4
function spells:projectiles/projectile5
function spells:spectralbulwark
function spells:projectiles/projectile6
execute as @e[tag=projectile7] at @s run function spells:projectiles/projectile7
function spells:projectiles/projectile8
function spells:projectiles/projectile9
function spells:projectiles/projectile10
function spells:projectiles/projectile11n12
function spells:projectiles/projectile13
function spells:effects/damagerprojectile
function spells:effects/cloudburst
function spells:effects/luminousprojection
function spells:projectiles/projectile14
function spells:effects/danceofblades
execute as @e[tag=projectile15] at @s run function spells:projectiles/projectile15
function spells:projectiles/projectile16
function spells:effects/nullificationshock
function spells:projectiles/projectile17anddecay
function spells:projectiles/projectile18
function spells:effects/fungi
function spells:effects/rejuvenation
function spells:projectiles/projectile19
function spells:projectiles/projectile20
function spells:spell31-backdash
function spells:effects/soulignition
function spells:projectiles/projectile21

execute as @a if score @s hp < @s hp_prev at @s run scoreboard players operation @s hp_prev = @s hp
kill @e[type=item]