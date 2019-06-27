# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\player_death\terminate.mcfunction

# Add room tag early so cutscene doesn't delete itself immediately
tag @a[tag=player_room_player_death] add player_room_prison

# Make players officially travel to player_death room
tag @a[tag=player_room_prison] add player_travel_player_death_to_prison

# Kill self
kill @s
