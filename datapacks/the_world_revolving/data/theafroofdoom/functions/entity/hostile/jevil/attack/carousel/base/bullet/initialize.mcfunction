# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\bullet\initialize.mcfunction

# Initializes entities tagged "attack_bullet_carousel_new"

# Set model
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s attack_model

# Remove "new" status of latest bullet
tag @s remove attack_bullet_carousel_new
