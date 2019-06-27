# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\initialize.mcfunction

# Initializes entities who want to cutscene final chaos

# Add Tag
tag @s add jevil_is_attacking_cutscene_final_chaos

# Set scores
scoreboard players set @s attack_clock -1
scoreboard players set @s attack_length 383
scoreboard players set @s attack_recover 9

scoreboard players set @s attack_variant -1

# Give players blindness for the teleport
effect give @a[team=player] blindness 1 0 true
effect give @a[team=spectator] blindness 1 0 true

# Teleport all playing players to cutscene area
spreadplayers 0 0 0 1 false @a[team=player]
execute as @a[team=player] at @s run teleport @s ~ 102 ~

# Teleport all spectators to outer cutscene area
teleport @a[team=spectator] 0 102 -6 0 0

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base initialize function
function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/initialize
