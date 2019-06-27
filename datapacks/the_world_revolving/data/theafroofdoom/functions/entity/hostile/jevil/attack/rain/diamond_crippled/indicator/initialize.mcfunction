# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\diamond_crippled\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_rain_new" with attack_variant = -1

# Set group ID
function theafroofdoom:entity/group_id/set_next

# Set scores
scoreboard players operation @s attack_ang_min = #attack_rain_diamond_crippled attack_ang_min
scoreboard players operation @s attack_ang_range = #attack_rain_diamond_crippled attack_ang_range
scoreboard players operation @s attack_charge_up = #attack_rain_diamond_crippled attack_charge_up
scoreboard players operation @s attack_rad_min = #attack_rain_diamond_crippled attack_rad_min
scoreboard players operation @s attack_rad_range = #attack_rain_diamond_crippled attack_rad_range
scoreboard players set @s attack_variant -1

# Summon bullet
function theafroofdoom:entity/hostile/jevil/attack/rain/diamond_crippled/indicator/summon_bullet

# Initialize bullet
function theafroofdoom:entity/hostile/jevil/attack/rain/diamond_crippled/bullet/initialize

# Summon highlighter
function theafroofdoom:entity/hostile/jevil/attack/rain/diamond_crippled/indicator/summon_highlighter

# Run base rain indicator initialize function
function theafroofdoom:entity/hostile/jevil/attack/rain/base/indicator/initialize
