# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\items\enable\magic\heal_prayer_helper.mcfunction

# Enable heal prayer
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:15}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:15}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:9}}
