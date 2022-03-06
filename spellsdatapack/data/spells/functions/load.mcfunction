scoreboard objectives remove rightclick
scoreboard objectives add rightclick used:warped_fungus_on_a_stick "rightclick"
scoreboard objectives add projtime dummy "projtime"
scoreboard objectives add mana dummy "mana"
team add team1 "Team 1"
team add team2 "Team 2"
team modify team1 friendlyFire false
team modify team2 friendlyFire false
team modify team1 seeFriendlyInvisibles false
team modify team2 seeFriendlyInvisibles false
tellraw @a {"text":"Thank you for using the Spells datapack!","color":"green","bold":true}