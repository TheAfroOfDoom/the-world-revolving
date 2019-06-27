# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\diamond\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_rain_new" with attack_variant = -2

# Set group ID
function theafroofdoom:entity/group_id/set_next

# Set scores
scoreboard players operation @s attack_ang_min = #attack_rain_diamond attack_ang_min
scoreboard players operation @s attack_ang_range = #attack_rain_diamond attack_ang_range
scoreboard players operation @s attack_charge_up = #attack_rain_diamond attack_charge_up
scoreboard players operation @s attack_rad_min = #attack_rain_diamond attack_rad_min
scoreboard players operation @s attack_rad_range = #attack_rain_diamond attack_rad_range
scoreboard players set @s attack_variant -2

# Summon bullet
function theafroofdoom:entity/hostile/jevil/attack/rain/diamond/indicator/summon_bullet

# Initialize bullet
function theafroofdoom:entity/hostile/jevil/attack/rain/diamond/bullet/initialize

# Summon highlighter
function theafroofdoom:entity/hostile/jevil/attack/rain/diamond/indicator/summon_highlighter

# Run base rain indicator initialize function
function theafroofdoom:entity/hostile/jevil/attack/rain/base/indicator/initialize
