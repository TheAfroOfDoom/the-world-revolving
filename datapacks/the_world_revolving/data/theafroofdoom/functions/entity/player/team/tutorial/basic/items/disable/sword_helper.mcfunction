# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\items\disable\sword_helper.mcfunction

# Disable sword
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:19}}
