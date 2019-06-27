# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\items\disable\selected\magic\rude_buster_helper.mcfunction

# Disable rude buster (selected)
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:17}}
