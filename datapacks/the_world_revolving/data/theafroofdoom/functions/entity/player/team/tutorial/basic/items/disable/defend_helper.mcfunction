# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\items\disable\defend_helper.mcfunction

# Disable defend
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:6}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:6}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:12}}
