# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\diamond\initialize.mcfunction

# Initializes entities who want to rain diamond

# Add Tag
tag @s add jevil_is_attacking_rain_diamond

# Set scores
scoreboard players operation @s attack_length = #attack_rain_diamond attack_length
scoreboard players operation @s attack_rate = #attack_rain_diamond attack_rate
scoreboard players operation @s attack_recover = #attack_rain_diamond attack_recover
scoreboard players operation @s attack_voice = #attack_rain_diamond attack_voice
scoreboard players set @s attack_variant -2

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base rain initialize function
function theafroofdoom:entity/hostile/jevil/attack/rain/base/initialize
