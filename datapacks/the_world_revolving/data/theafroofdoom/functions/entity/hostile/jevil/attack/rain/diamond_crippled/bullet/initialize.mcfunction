# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\diamond_crippled\bullet\initialize.mcfunction

# Initializes entities tagged "attack_bullet_rain_active" with attack_variant = -1

# Set scores
scoreboard players operation @s attack_model = #attack_rain_diamond_crippled attack_model

# Run base rain bullet initialize function
function theafroofdoom:entity/hostile/jevil/attack/rain/base/bullet/initialize
