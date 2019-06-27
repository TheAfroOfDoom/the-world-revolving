# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_devilsknife_new"

# Set scores
scoreboard players set @s attack_clock -1
scoreboard players operation @s afro.math_0 = @s attack_cycles
scoreboard players set @s afro.math_1 0

# Summon bullet ring
function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/indicator/summon_bullets

# Remove Tags
tag @s remove attack_indicator_devilsknife_new
