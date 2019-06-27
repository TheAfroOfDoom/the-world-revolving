# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\items\disable\selected\magic\pacify_helper.mcfunction

# Disable pacify (Selected)
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:16}}
