# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\error\no_players.mcfunction

# Print error in chat
tellraw @a [{"color": "red", "italic": "true", "translate": "error.boss_fight.vanilla.no_players"}]

# Reset all players who were in the arena
execute as @a[tag=player_room_boss_fight_vanilla] at @s run function theafroofdoom:entity/player/reset

# Reset own scores so rest of loop doesn't run
scoreboard players reset @s

# Kill boss_fight and hostile entities
kill @e[tag=boss_fight]
kill @e[tag=hostile]
