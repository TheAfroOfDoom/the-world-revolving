# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\items\enable\sword_helper.mcfunction

# Enable sword
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:19}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:19}}] merge value {id:"minecraft:diamond_sword",tag:{CustomModelData:1}}
