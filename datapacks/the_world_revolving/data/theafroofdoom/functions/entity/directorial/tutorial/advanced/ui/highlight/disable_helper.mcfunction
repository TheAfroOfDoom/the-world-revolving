# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\ui\highlight\disable_helper.mcfunction

# Edit the shulker box
# Convert UI elements to their unhighlighted version

# Cannot do shortcut version because we want to always leave the quit buttons as COAS
# Skip
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:13}}

# Magic.Heal Prayer
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}].id set value "minecraft:emerald"

# Magic.Rude Buster
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}].id set value "minecraft:emerald"
