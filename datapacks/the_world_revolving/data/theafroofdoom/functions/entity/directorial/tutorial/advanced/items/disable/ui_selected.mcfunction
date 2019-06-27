# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\items\disable\ui_selected.mcfunction

# Skip (Selected)
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:20}}

# Magic.Heal Prayer (Selected)
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:15}}

# Magic.Rude Buster (Selected)
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:17}}
