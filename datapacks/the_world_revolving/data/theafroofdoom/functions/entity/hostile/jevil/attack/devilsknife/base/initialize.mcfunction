# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\initialize.mcfunction

# Initializes entities who want to devilsknife

# Add Tag
tag @s add jevil_is_attacking_devilsknife

# Set scores
scoreboard players set @s attack_clock -1
scoreboard players operation @s afro.math_0 = @s attack_rate

# Vanish Jevil
function theafroofdoom:entity/hostile/jevil/attack/vanish/devilsknife/down
