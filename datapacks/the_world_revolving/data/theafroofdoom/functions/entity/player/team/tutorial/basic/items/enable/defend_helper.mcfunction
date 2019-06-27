# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\items\enable\defend_helper.mcfunction

# Enable defend
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:12}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:12}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:6}}
