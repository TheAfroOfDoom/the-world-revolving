# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_cutscene_final_chaos"

# Add Tag
tag @s add jevil_is_not_attacking_cutscene_final_chaos

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/reset_scores

# Teleport players back to arena
spreadplayers 0 0 0 15 false @a[team=player]
execute as @a[team=player] at @s run teleport @s ~ 4 ~ facing 0 4 0

# Teleport spectators back to arena
teleport @a[team=spectator] 0 30 0 0 90

# Remove Tag
tag @s remove jevil_is_attacking_cutscene_final_chaos

# Run base terminate function
function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/terminate
