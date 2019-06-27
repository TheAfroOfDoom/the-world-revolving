# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla_quick\initialize.mcfunction

# Set scores
scoreboard players set @s afro.math_0 -1
scoreboard players set @s cutscn_interact 1
scoreboard players set @s cutscn_text_id 0
scoreboard players set @s cutscn_text_time -1

# Remove tag
tag @s remove cutscene_new
