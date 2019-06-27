# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\items\disable\magic\pacify_helper.mcfunction

# Disable pacify
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:10}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:10}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:16}}
