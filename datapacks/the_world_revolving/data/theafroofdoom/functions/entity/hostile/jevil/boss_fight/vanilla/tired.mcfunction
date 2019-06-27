# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\boss_fight\vanilla\tired.mcfunction

# Add tag
tag @s add jevil_is_tired

# Update model
data modify entity @s ArmorItems[3].tag.CustomModelData set value 15

# Set scores
scoreboard players set @s jevil_model 10

# Set name color to show tired
data merge entity @s {CustomName:'{"color":"aqua","translate":"jevil.name"}'}
