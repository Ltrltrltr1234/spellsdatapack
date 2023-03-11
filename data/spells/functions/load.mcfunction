scoreboard objectives remove rightclick
scoreboard objectives add rightclick used:warped_fungus_on_a_stick
scoreboard objectives add projtime dummy
scoreboard objectives add mana dummy
scoreboard objectives add timer dummy
scoreboard objectives add spell2timer dummy
scoreboard objectives add spell8timer dummy
scoreboard objectives add spell10timer dummy
scoreboard objectives add spell13timer dummy
scoreboard objectives add spell17timer dummy
scoreboard objectives add spell17type dummy
scoreboard objectives add spell19timer dummy
scoreboard objectives add spell20timer dummy
scoreboard objectives add spell20bc dummy
scoreboard objectives add spell21delay dummy
scoreboard objectives add spell22blades dummy
scoreboard objectives add spell22counter dummy
scoreboard objectives add spell24kbtimer dummy
scoreboard objectives add spell24kbtargettimer dummy
scoreboard objectives add spell26aim dummy
scoreboard objectives add spell28tpcd dummy
scoreboard objectives add spell29charge dummy
scoreboard objectives add spell29counter dummy
scoreboard objectives add spell30charge dummy
scoreboard objectives add spell31dashtime dummy
scoreboard objectives add spell32time dummy
scoreboard objectives add cw_particleplot dummy
scoreboard objectives add spell33effect dummy
scoreboard objectives add hp_prev dummy "hp change detection"
scoreboard objectives add focus dummy "beam spells focus"
scoreboard objectives add beamtimer dummy
scoreboard objectives add beamdelay dummy
scoreboard objectives add beamdmg dummy "beamdamagetimer"
scoreboard objectives add hp health "HP"
scoreboard objectives add stuntime dummy "stun time"
scoreboard objectives add menupage dummy "spell catalogue page"
scoreboard objectives add menuclick dummy "spell catalogue selection"
scoreboard objectives setdisplay belowName hp
scoreboard players set @a hp_prev 0

#projectile motion variables
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy
scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy
team add team1 "Team 1"
team add team2 "Team 2"
team modify team1 friendlyFire false
team modify team2 friendlyFire false
team modify team1 seeFriendlyInvisibles false
team modify team2 seeFriendlyInvisibles false
tellraw @a {"text":"Thank you for using the Spells datapack!","color":"green","bold":true}