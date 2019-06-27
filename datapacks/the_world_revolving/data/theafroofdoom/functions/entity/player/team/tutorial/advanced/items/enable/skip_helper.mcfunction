# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\items\enable\skip_helper.mcfunction

# Enable skip
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:20}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:20}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:13}}
