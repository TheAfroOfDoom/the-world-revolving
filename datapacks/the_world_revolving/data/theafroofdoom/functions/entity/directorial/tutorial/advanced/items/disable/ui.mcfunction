# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\items\disable\ui.mcfunction

# Skip
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:13}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:13}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:20}}

# Magic.Heal Prayer
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:9}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:9}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:15}}

# Magic.Rude Buster
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:11}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:11}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:17}}
