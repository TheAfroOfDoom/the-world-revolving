# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\items\disable\magic\heal_prayer_helper.mcfunction

# Disable heal prayer
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:9}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:9}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:15}}
