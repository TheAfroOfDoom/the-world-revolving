# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\select\act\pirouette.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add player_is_doing_act_pirouette

# Display text
function theafroofdoom:entity/player/team/player/do/act/pirouette/text/0

# Remove tension points
function theafroofdoom:entity/player/team/player/tension_points/remove/act/pirouette

# Decrease tired points for the current phase
scoreboard players remove @e[tag=boss_fight] afro.math_2 1

# Decrease tired points
scoreboard players remove @e[tag=boss_fight] bfight_tired 1

# Playsounds
execute at @e[tag=jevil] run playsound theafroofdoom:player.do.act.pirouette player @a ~ ~ ~ 5 1 0.5
playsound theafroofdoom:player.ui.select player @s ~ ~ ~

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable

# Remove tags
tag @s remove player_is_not_doing
