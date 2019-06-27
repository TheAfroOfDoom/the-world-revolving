# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\items\disable\selected\skip_helper.mcfunction

# Disable skip (selected)
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:12}}
