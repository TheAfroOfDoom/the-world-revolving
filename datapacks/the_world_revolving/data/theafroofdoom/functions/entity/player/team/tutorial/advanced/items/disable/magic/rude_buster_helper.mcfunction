# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\items\disable\magic\rude_buster_helper.mcfunction

# Disable rude buster
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:11}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:11}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:17}}
