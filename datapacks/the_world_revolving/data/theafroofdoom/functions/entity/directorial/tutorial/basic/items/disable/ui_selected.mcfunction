# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\items\disable\ui_selected.mcfunction

# Act.Check (Selected)
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:8}}

# Defend (Selected)
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:12}}

# Magic.Prayer (Selected)
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:16}}
