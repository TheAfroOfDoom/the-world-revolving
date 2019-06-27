# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\dead\loop.mcfunction

# If boss_fight is active and player has the correct room tag, ensure they are actually in the room
execute if entity @e[tag=boss_fight_vanilla] if entity @s[tag=player_room_boss_fight_vanilla] run function theafroofdoom:entity/player/team/spectator/stay_in_room

# Give permanent saturation
effect give @s saturation 1000000 0 true

# Clear any hunger
effect clear @s hunger
