# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\interact_jevil.mcfunction

# If a cutscene already exists, set its interact value to 1
scoreboard players set @e[tag=cutscene] cutscn_interact 1

# Only summon new cutscene if:
#   - Player is on team player (will be playing the boss fight)
#   - No boss fights are currently running
#   - No cutscenes are currently running
execute unless score @e[limit=1,tag=lobby_jevil] jevil_cutscene matches 1 unless entity @e[tag=cutscene] unless entity @e[tag=boss_fight] run function theafroofdoom:entity/player/team/player/start_intro
