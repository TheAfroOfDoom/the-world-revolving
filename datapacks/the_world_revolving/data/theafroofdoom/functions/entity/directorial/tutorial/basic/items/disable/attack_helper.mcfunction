# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\items\disable\attack_helper.mcfunction

# NOTE(jordan): Add to this list if we add more items

# Edit the shulker box
# Convert items to their disabled version
# # Healing
# Tropical Fish - Dark Candy
execute if data block ~ ~ ~ {Items:[{id:"minecraft:tropical_fish",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:tropical_fish",tag:{CustomModelData:1}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:3}}

# # UI
# Deselected
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald"}]} run function theafroofdoom:entity/directorial/tutorial/basic/items/disable/ui

# Selected
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick"}]} run function theafroofdoom:entity/directorial/tutorial/basic/items/disable/ui_selected
