# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\items\disable\skip_helper.mcfunction

# Disable skip
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:13}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:13}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:20}}
