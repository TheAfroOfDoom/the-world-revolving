# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\highlight\disable_helper.mcfunction

# NOTE(jordan): Add to this list if we add more items

# Edit the shulker box
# Convert UI elements to their unhighlighted version

# NOTE(jordan): Shortcut version, can only do if the CustomModelData values are 1:1
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick"}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick"}].id set value "minecraft:emerald"

# Act
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:1}}
