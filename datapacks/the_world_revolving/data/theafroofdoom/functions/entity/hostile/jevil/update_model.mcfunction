# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\update_model.mcfunction

# Updates model when called to match score jevil_model
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s jevil_model

# Cap jevil_dance at 4
execute if score @s jevil_dance matches 5.. run scoreboard players set @s jevil_dance 4

# Set model to dancing if the score is not -1
execute if score @s jevil_dance matches 0 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10
execute if score @s jevil_dance matches 1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 11
execute if score @s jevil_dance matches 2 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 12
execute if score @s jevil_dance matches 3 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 13
execute if score @s jevil_dance matches 4 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 14

# Jevil tired model takes priority over dancing model
execute if score @s jevil_model matches 15 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 15
