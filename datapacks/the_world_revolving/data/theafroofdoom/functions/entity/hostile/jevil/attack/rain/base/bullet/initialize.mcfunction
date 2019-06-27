# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\base\bullet\initialize.mcfunction

# Initializes entities tagged "attack_bullet_rain_new"

# Set model
execute store result entity @s Passengers[0].Passengers[0].Passengers[0].Passengers[0].ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s attack_model
