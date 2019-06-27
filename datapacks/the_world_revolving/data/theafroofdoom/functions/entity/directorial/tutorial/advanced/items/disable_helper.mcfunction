# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\items\disable_helper.mcfunction

# Edit the shulker box
# Convert items to their disabled version

# # UI
# Deselected
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald"}]} run function theafroofdoom:entity/directorial/tutorial/advanced/items/disable/ui

# Selected
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick"}]} run function theafroofdoom:entity/directorial/tutorial/advanced/items/disable/ui_selected
