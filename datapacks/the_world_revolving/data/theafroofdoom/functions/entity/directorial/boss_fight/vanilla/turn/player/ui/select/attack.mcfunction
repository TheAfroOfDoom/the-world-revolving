# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\select\attack.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add player_is_doing_attack

# Remove health from Jevil
scoreboard players operation @e[limit=1,tag=boss_fight] bfight_health -= @s player_damage

# Copy boss fight health to bossbar
execute store result bossbar theafroofdoom:jevil.health value run scoreboard players get @e[limit=1,tag=boss_fight] bfight_health

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable/attack

# Remove tags
tag @s remove player_is_not_doing
