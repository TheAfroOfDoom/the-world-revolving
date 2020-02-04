# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\select\magic\pacify.mcfunction

# Set scores
scoreboard players set @s player_clock -1
scoreboard players set @e[tag=boss_fight] bfight_pacified 1

# Add tags
tag @s add player_is_doing_magic_pacify

# Display text
function theafroofdoom:entity/player/team/player/do/magic/pacify/text/0

# Remove tension points
function theafroofdoom:entity/player/team/player/tension_points/remove/magic/pacify

# Playsounds
playsound theafroofdoom:player.do.magic.pacify player @a ~ ~ ~ 15 1 0.5
playsound theafroofdoom:player.ui.select player @s ~ ~ ~ 15 1 1

# Display particles
execute at @e[tag=jevil] run particle instant_effect ~ ~2.5 ~ 1 1 1 0 100
execute at @e[tag=lobby_jevil] run particle instant_effect ~ ~2.5 ~ 1 1 1 0 100 force

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable

# Remove tags
tag @s remove player_is_not_doing
