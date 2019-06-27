# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\base\attack\shoot\spade.mcfunction

# Run one instance of an "attack_shoot_spade"

# Summon indicator (activate attack)
function theafroofdoom:entity/hostile/jevil/attack/shoot/spade/summon_indicator

# Set attack_recover to the randomized attack's attack_recover
scoreboard players operation @s attack_recover = #attack_shoot_spade attack_recover

# If boolean attack_rt_static = 0 (false), set rate until next attack to the randomized attack's attack_rate
execute if score @s attack_rt_static matches 0 run scoreboard players operation @s afro.math_0 = #attack_shoot_spade attack_rate
