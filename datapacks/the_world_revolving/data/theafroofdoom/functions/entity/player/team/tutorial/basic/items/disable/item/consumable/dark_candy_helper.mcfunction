# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\items\disable\defend_helper.mcfunction

# Disable dark candy
execute if data block ~ ~ ~ {Items:[{id:"minecraft:tropical_fish",tag:{CustomModelData:3}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:tropical_fish",tag:{CustomModelData:3}}].id set value "minecraft:diamond"
