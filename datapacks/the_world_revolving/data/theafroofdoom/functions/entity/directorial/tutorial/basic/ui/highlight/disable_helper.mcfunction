# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\ui\highlight\disable_helper.mcfunction

# NOTE(jordan): Add to this list if we add more items

# Edit the shulker box
# Convert UI elements to their unhighlighted version

# Cannot do shortcut version because we want to always leave the quit buttons as COAS
# Act.Check
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}].id set value "minecraft:emerald"

# Magic.Pacify
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}].id set value "minecraft:emerald"

# Defend
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}].id set value "minecraft:emerald"

# Act
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:1}}
