# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\items\enable\item\consumable\dark_candy_helper.mcfunction

# Enable dark candy
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:3}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:3}}].id set value "minecraft:tropical_fish"
