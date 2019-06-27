# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\items\disable\ui.mcfunction

# Act.Check
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:2}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:2}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:8}}

# Defend
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:6}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:6}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:12}}

# Magic.Pacify
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:10}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:10}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:16}}
