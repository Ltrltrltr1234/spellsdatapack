execute as @a unless score @s menupage matches -100.. run scoreboard players set @s menupage 1
scoreboard players set @a menuclick 0

item replace entity @a enderchest.18 with nether_star{display:{Name:'{"text":"PREVIOUS PAGE","color":"#BB00FF","bold":true,"italic":false}'},menuitem:1b,left:1b} 1
item replace entity @a enderchest.26 with nether_star{display:{Name:'{"text":"NEXT PAGE","color":"#BB00FF","bold":true,"italic":false}'},menuitem:1b,right:1b} 1

execute as @a store success score @s menuclick run clear @a nether_star{menuitem:1b,left:1b}
execute as @a[scores={menuclick=1..}] run scoreboard players remove @s menupage 1
execute as @a[scores={menuclick=1..}] at @s run playsound ui.loom.select_pattern master @s ~ ~ ~ 2 1 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @a nether_star{menuitem:1b,right:1b}
execute as @a[scores={menuclick=1..}] run scoreboard players add @s menupage 1
execute as @a[scores={menuclick=1..}] at @s run playsound ui.loom.select_pattern master @s ~ ~ ~ 2 1 1
scoreboard players set @a menuclick 0
execute as @a[scores={menupage=..0}] run scoreboard players set @s menupage 2
execute as @a[scores={menupage=3..}] run scoreboard players set @s menupage 1

execute as @a[scores={menupage=1}] run item replace entity @s enderchest.0 with enchanted_book{display:{Name:'{"text":"1 GALE\'S BLESSING","color":"#CFF7FF","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:1,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.1 with enchanted_book{display:{Name:'{"text":"2 TERRAMANCY","color":"#853513","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:2,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.2 with enchanted_book{display:{Name:'{"text":"3 BLAZING ENERGY","color":"#FC6E1C","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:3,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.3 with enchanted_book{display:{Name:'{"text":"4 FLAMES OF DESECRATION","color":"#33BCDE","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:4,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.4 with enchanted_book{display:{Name:'{"text":"5 SPIRITUAL VITALITY","color":"#8AFF9D","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:5,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.5 with enchanted_book{display:{Name:'{"text":"6 INSTANT TRANSMISSION","color":"#5F17DE","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:6,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.6 with enchanted_book{display:{Name:'{"text":"7 BANE LIGHTNING","color":"#14E8FF","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:7,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.7 with enchanted_book{display:{Name:'{"text":"8 MANA FORMATION","color":"#6378FF","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:8,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.8 with enchanted_book{display:{Name:'{"text":"9 CRYOMANCY","color":"#B3D4FF","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:9,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.9 with enchanted_book{display:{Name:'{"text":"10 UMBRAMANCY","color":"#7A0AC4","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:10,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.10 with enchanted_book{display:{Name:'{"text":"11 HOLY EXECUTION","color":"#FFFA63","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:11,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.11 with enchanted_book{display:{Name:'{"text":"12 SPORE BOMB","color":"#6DBD2F","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:12,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.12 with enchanted_book{display:{Name:'{"text":"13 SPECTRAL BULWARK","color":"#52FF57","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:13,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.13 with enchanted_book{display:{Name:'{"text":"14 PULSE BOLT","color":"#99F1FF","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:14,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.14 with enchanted_book{display:{Name:'{"text":"15 CHAOS BREAKER","color":"#E3003D","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:15,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.15 with enchanted_book{display:{Name:'{"text":"16 DEATH\'S WHISPER","color":"#5D527D","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:16,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.16 with enchanted_book{display:{Name:'{"text":"17 MANA SURGE","color":"#2268F5","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:17,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=1}] run item replace entity @s enderchest.17 with enchanted_book{display:{Name:'{"text":"18 FROST SPEAR","color":"#9FEFF5","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:18,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.0 with enchanted_book{display:{Name:'{"text":"19 TURBULENT HEAVE","color":"#F0F0F0","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:19,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.1 with enchanted_book{display:{Name:'{"text":"20 LIGHTSURGE CANNON","color":"#56F0AD","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:20,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.2 with enchanted_book{display:{Name:'{"text":"21 THORN LASH","color":"#2EF02E","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:21,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.3 with enchanted_book{display:{Name:'{"text":"22 DANCE OF BLADES","color":"#D12626","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:22,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.4 with enchanted_book{display:{Name:'{"text":"23 DISCHARGE FULMINATION","color":"#24AB9D","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:23,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.5 with enchanted_book{display:{Name:'{"text":"24 NULLIFICATION SHOCK","color":"#EEFFAB","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:24,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.6 with enchanted_book{display:{Name:'{"text":"25 ABYSS\' GAZE","color":"#6342A6","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:25,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.7 with enchanted_book{display:{Name:'{"text":"26 CATALYZING MIST","color":"#C4C2FF","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:26,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.8 with enchanted_book{display:{Name:'{"text":"27 DEMETER\'S FAVOUR","color":"#ACFF40","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:27,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.9 with enchanted_book{display:{Name:'{"text":"28 FUNGAL SYNTHESIS","color":"#BD5151","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:28,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.10 with enchanted_book{display:{Name:'{"text":"29 REJUVENATION","color":"#FF75B1","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:29,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.11 with enchanted_book{display:{Name:'{"text":"30 ASHEN REMEMBRANCE","color":"#A87528","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:30,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.12 with enchanted_book{display:{Name:'{"text":"31 ROARING BREEZE","color":"#CED2E0","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:31,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.13 with enchanted_book{display:{Name:'{"text":"32 SOUL IGNITION","color":"#F02800","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:32,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.14 with enchanted_book{display:{Name:'{"text":"33 ATOMIC DISCHARGE","color":"#FF215C","bold":true,"italic":false}'},menuitem:1b,givesspell:1b,spellgive:33,Enchantments:[{}],StoredEnchantments:[{}]} 
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.15 with air
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.16 with air
execute as @a[scores={menupage=2}] run item replace entity @s enderchest.17 with air
item replace entity @a enderchest.19 with purple_stained_glass_pane{display:{Name:'{"text":""}'},menuitem:1b,Enchantments:[{}]} 1
item replace entity @a enderchest.20 with purple_stained_glass_pane{display:{Name:'{"text":""}'},menuitem:1b,Enchantments:[{}]} 1
item replace entity @a enderchest.21 with purple_stained_glass_pane{display:{Name:'{"text":""}'},menuitem:1b,Enchantments:[{}]} 1
item replace entity @a enderchest.22 with purple_stained_glass_pane{display:{Name:'{"text":""}'},menuitem:1b,Enchantments:[{}]} 1
item replace entity @a enderchest.23 with purple_stained_glass_pane{display:{Name:'{"text":""}'},menuitem:1b,Enchantments:[{}]} 1
item replace entity @a enderchest.24 with purple_stained_glass_pane{display:{Name:'{"text":""}'},menuitem:1b,Enchantments:[{}]} 1
item replace entity @a enderchest.25 with purple_stained_glass_pane{display:{Name:'{"text":""}'},menuitem:1b,Enchantments:[{}]} 1

execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:1}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"GALE\'S BLESSING","color":"#CFF7FF","bold":true,"italic":false}'},wand:1b,spell:1,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:2}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"TERRAMANCY","color":"#853513","bold":true,"italic":false}'},wand:1b,spell:2,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:3}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"BLAZING ENERGY","color":"#FC6E1C","bold":true,"italic":false}'},wand:1b,spell:3,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:4}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"FLAMES OF DESECRATION","color":"#33BCDE","bold":true,"italic":false}'},wand:1b,spell:4,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:5}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"SPIRITUAL VITALITY","color":"#8AFF9D","bold":true,"italic":false}'},wand:1b,spell:5,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:6}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"INSTANT TRANSMISSION","color":"#5F17DE","bold":true,"italic":false}'},wand:1b,spell:6,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:7}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"BANE LIGHTNING","color":"#14E8FF","bold":true,"italic":false}'},wand:1b,spell:7,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:8}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"MANA FORMATION","color":"#6378FF","bold":true,"italic":false}'},wand:1b,spell:8,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:9}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"CRYOMANCY","color":"#B3D4FF","bold":true,"italic":false}'},wand:1b,spell:9,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:10}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"UMBRAMANCY","color":"#7A0AC4","bold":true,"italic":false}'},wand:1b,spell:10,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:11}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"HOLY EXECUTION","color":"#FFFA63","bold":true,"italic":false}'},wand:1b,spell:11,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:12}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"SPORE BOMB","color":"#6DBD2F","bold":true,"italic":false}'},wand:1b,spell:12,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:13}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"SPECTRAL BULWARK","color":"#52FF57","bold":true,"italic":false}'},wand:1b,spell:13,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:14}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"PULSE BOLT","color":"#99F1FF","bold":true,"italic":false}'},wand:1b,spell:14,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:15}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"CHAOS BREAKER","color":"#E3003D","bold":true,"italic":false}'},wand:1b,spell:15,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:16}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"DEATH\'S WHISPER","color":"#5D527D","bold":true,"italic":false}'},wand:1b,spell:16,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:17}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"MANA SURGE","color":"#2268F5","bold":true,"italic":false}'},wand:1b,spell:17,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:18}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"FROST SPEAR","color":"#9FEFF5","bold":true,"italic":false}'},wand:1b,spell:18,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:19}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"TURBULENT HEAVE","color":"#F0F0F0","bold":true,"italic":false}'},wand:1b,spell:19,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:20}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"LIGHTSURGE CANNON","color":"#56F0AD","bold":true,"italic":false}'},wand:1b,spell:20,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:21}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"THORN LASH","color":"#2EF02E","bold":true,"italic":false}'},wand:1b,spell:21,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:22}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"DANCE OF BLADES","color":"#D12626","bold":true,"italic":false}'},wand:1b,spell:22,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:23}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"DISCHARGE FULMINATION","color":"#24AB9D","bold":true,"italic":false}'},wand:1b,spell:23,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:24}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"NULLIFICATION SHOCK","color":"#EEFFAB","bold":true,"italic":false}'},wand:1b,spell:24,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:25}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"ABYSS\' GAZE","color":"#6342A6","bold":true,"italic":false}'},wand:1b,spell:25,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:26}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"CATALYZING MIST","color":"#C4C2FF","bold":true,"italic":false}'},wand:1b,spell:26,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:27}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"DEMETER\'S FAVOUR","color":"#ACFF40","bold":true,"italic":false}'},wand:1b,spell:27,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:28}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"FUNGAL SYNTHESIS","color":"#BD5151","bold":true,"italic":false}'},wand:1b,spell:28,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:29}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"REJUVENATION","color":"#FF75B1","bold":true,"italic":false}'},wand:1b,spell:29,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:30}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"ASHEN REMEMBRANCE","color":"#A87528","bold":true,"italic":false}'},wand:1b,spell:30,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:31}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"ROARING BREEZE","color":"#CED2E0","bold":true,"italic":false}'},wand:1b,spell:31,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:32}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"SOUL IGNITION","color":"#F02800","bold":true,"italic":false}'},wand:1b,spell:32,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0
execute as @a store success score @s menuclick run clear @s enchanted_book{menuitem:1b,spellgive:33}
execute as @a[scores={menuclick=1..}] at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 2 1 1
execute as @a[scores={menuclick=1..}] at @s run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"ATOMIC DISCHARGE","color":"#FF215C","bold":true,"italic":false}'},wand:1b,spell:33,Enchantments:[{}]} 1
scoreboard players set @a menuclick 0

clear @a purple_stained_glass_pane{menuitem:1b}