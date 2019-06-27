# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\recover\initialize.mcfunction

# Recovers Jevil at the end of an attack

# Add Tag
tag @s add jevil_is_attacking_recover

# Set scores
scoreboard players set @s attack_clock -1

# Remove Tag
tag @s remove jevil_is_not_attacking_recover
