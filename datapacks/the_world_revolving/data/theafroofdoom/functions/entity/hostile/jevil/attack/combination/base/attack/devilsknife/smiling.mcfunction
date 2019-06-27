# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\base\attack\devilsknife\smiling.mcfunction

# Run one instance of an "attack_devilsknife_smiling"

# Summon indicator (activate attack)
function theafroofdoom:entity/hostile/jevil/attack/devilsknife/smiling/summon_indicator

# Set attack_recover to the randomized attack's attack_recover
scoreboard players operation @s attack_recover = #attack_devilsknife_smiling attack_recover

# If boolean attack_rt_static = 0 (false), set rate until next attack to the randomized attack's attack_rate
execute if score @s attack_rt_static matches 0 run scoreboard players operation @s afro.math_0 = #attack_devilsknife_smiling attack_rate
