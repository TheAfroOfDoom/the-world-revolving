# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\items\enable\magic\pacify_helper.mcfunction

# Enable pacify
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:16}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:16}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:10}}
