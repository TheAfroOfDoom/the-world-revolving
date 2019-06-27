# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\ui\select\items.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add player_is_doing_items

# Playsounds
playsound theafroofdoom:player.ui.select player @s ~ ~ ~
playsound theafroofdoom:player.do.item.heal player @s ~ ~ ~ 2 1 0.1

# Handle if player ate a consumable
# Initialize super-fast regen
# Dark candy
execute if score @s ate_trop_fish matches 1.. run scoreboard players add @s hearts_needed 10

# Reset ate scores
scoreboard players reset @s ate_trop_fish

# Display particles
particle happy_villager ~ ~1.25 ~ 0.5 0.5 0.5 0 10

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/tutorial/basic/items/disable

# Remove tags
tag @s remove player_is_not_doing
