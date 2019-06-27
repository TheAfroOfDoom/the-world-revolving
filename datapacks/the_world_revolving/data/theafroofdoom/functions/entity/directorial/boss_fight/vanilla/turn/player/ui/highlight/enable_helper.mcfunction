# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\highlight\enable_helper.mcfunction

# NOTE(jordan): Add to this list if we add more UI elements

# Edit the shulker box
# Convert UI elements to their highlighted version

# NOTE(jordan): Shortcut version, can only do if the CustomModelData values are 1:1
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald"}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald"}].id set value "minecraft:carrot_on_a_stick"
