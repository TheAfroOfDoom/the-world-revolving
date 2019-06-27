# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\ui\highlight\enable_helper.mcfunction

# Edit the shulker box
# Convert UI elements to their highlighted version

# Skip
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:13}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:13}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16}}

# Magic.Heal Prayer
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:9}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:9}}].id set value "minecraft:carrot_on_a_stick"

# Magic.Rude Buster
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:11}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:11}}].id set value "minecraft:carrot_on_a_stick"
