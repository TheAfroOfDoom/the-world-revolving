# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_shoot_new"

# Set scores
scoreboard players set @s attack_clock -1

# Randomize location attack is shot from
function theafroofdoom:entity/hostile/jevil/attack/shoot/base/indicator/randomize/location

# Fixes Rotation de-sync bug
teleport @e[tag=jevil_phantom_attack_shoot_new] ~ ~-2 ~ ~ ~

# Remove Tags
tag @s remove attack_indicator_shoot_new
tag @e remove jevil_phantom_attack_shoot_new
