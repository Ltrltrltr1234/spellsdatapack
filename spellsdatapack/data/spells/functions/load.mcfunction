scoreboard objectives remove rightclick
scoreboard objectives add rightclick used:warped_fungus_on_a_stick "rightclick"
scoreboard objectives add projtime dummy "projtime"
scoreboard objectives add mana dummy "mana"
scoreboard objectives add timer dummy "timer"
scoreboard objectives add spell2timer dummy "spell2timer"
scoreboard objectives add spell8timer dummy "spell8timer"
scoreboard objectives add spell10timer dummy "spell10timer"
scoreboard objectives add spell13timer dummy "spell13timer"
scoreboard objectives add spell17timer dummy "spell17timer"
scoreboard objectives add spell17type dummy "spell17type"
scoreboard objectives add spell19timer dummy "spell19timer"
scoreboard objectives add spell20timer dummy "spell20timer"
scoreboard objectives add spell20bc dummy "spell20blockedcheck"
scoreboard objectives add spell21delay dummy "spell21delay"
scoreboard objectives add spell22blades dummy "spell22blades"
scoreboard objectives add hp_prev dummy "hp change detection"
scoreboard objectives add focus dummy "focus"
scoreboard objectives add beamtimer dummy "beamtimer"
scoreboard objectives add beamdelay dummy "beamdelay"
scoreboard objectives add beamdmg dummy "beamdamagetimer"
scoreboard objectives add hp health "HP"
scoreboard objectives setdisplay belowName hp

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