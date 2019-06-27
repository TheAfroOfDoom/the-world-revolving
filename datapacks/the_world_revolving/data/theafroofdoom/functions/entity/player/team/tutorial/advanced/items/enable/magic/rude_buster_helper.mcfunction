# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\items\enable\magic\rude_buster_helper.mcfunction

# Enable rude buster
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:17}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:17}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:11}}
