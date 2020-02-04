# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\select\act\hypnosis.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add player_is_doing_act_hypnosis

# Display text
function theafroofdoom:entity/player/team/player/do/act/hypnosis/text/0

# Remove tension points
function theafroofdoom:entity/player/team/player/tension_points/remove/act/hypnosis

# Give Resistance II to all players for the next attack
effect give @a[team=player] resistance 1000000 1 true

# Decrease tired points for the current phase
scoreboard players remove @e[tag=boss_fight] afro.math_2 2

# Decrease tired points
scoreboard players remove @e[tag=boss_fight] bfight_tired 2

# Playsounds
execute at @e[tag=jevil] run playsound theafroofdoom:player.do.act.hypnosis player @a ~ ~ ~ 5 1 0.5
playsound theafroofdoom:player.ui.select player @s ~ ~ ~

# Display particles
execute at @e[tag=jevil] run particle flash ~ ~2 ~
execute at @e[tag=jevil] run particle firework ~ ~2 ~ 1 1 1 0 100

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable

# Remove tags
tag @s remove player_is_not_doing
