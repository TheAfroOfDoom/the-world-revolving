# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\ui\highlight\disable_helper\hotbar.mcfunction

# NOTE(jordan): Add to this list if we add more items

# Edit the shulker box
# Convert UI elements to their unhighlighted version

# Store selected slot number into a score
execute store result score @s afro.math_0 run data get entity @s SelectedItemSlot

# Go through whole hotbar and check if slot number is the mainhand.  If not, replace the item.
# Act.Check
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:0b,tag:{CustomModelData:2}}]} unless score @s afro.math_0 matches 0 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:0b,tag:{CustomModelData:2}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:1b,tag:{CustomModelData:2}}]} unless score @s afro.math_0 matches 1 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:1b,tag:{CustomModelData:2}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{CustomModelData:2}}]} unless score @s afro.math_0 matches 2 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{CustomModelData:2}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:3b,tag:{CustomModelData:2}}]} unless score @s afro.math_0 matches 3 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:3b,tag:{CustomModelData:2}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:4b,tag:{CustomModelData:2}}]} unless score @s afro.math_0 matches 4 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:4b,tag:{CustomModelData:2}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:5b,tag:{CustomModelData:2}}]} unless score @s afro.math_0 matches 5 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:5b,tag:{CustomModelData:2}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:6b,tag:{CustomModelData:2}}]} unless score @s afro.math_0 matches 6 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:6b,tag:{CustomModelData:2}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:7b,tag:{CustomModelData:2}}]} unless score @s afro.math_0 matches 7 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:7b,tag:{CustomModelData:2}}].id set value "minecraft:emerald"

# Magic.Pacify
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:0b,tag:{CustomModelData:10}}]} unless score @s afro.math_0 matches 0 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:0b,tag:{CustomModelData:10}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:1b,tag:{CustomModelData:10}}]} unless score @s afro.math_0 matches 1 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:1b,tag:{CustomModelData:10}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{CustomModelData:10}}]} unless score @s afro.math_0 matches 2 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{CustomModelData:10}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:3b,tag:{CustomModelData:10}}]} unless score @s afro.math_0 matches 3 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:3b,tag:{CustomModelData:10}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:4b,tag:{CustomModelData:10}}]} unless score @s afro.math_0 matches 4 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:4b,tag:{CustomModelData:10}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:5b,tag:{CustomModelData:10}}]} unless score @s afro.math_0 matches 5 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:5b,tag:{CustomModelData:10}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:6b,tag:{CustomModelData:10}}]} unless score @s afro.math_0 matches 6 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:6b,tag:{CustomModelData:10}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:7b,tag:{CustomModelData:10}}]} unless score @s afro.math_0 matches 7 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:7b,tag:{CustomModelData:10}}].id set value "minecraft:emerald"

# Defend
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:0b,tag:{CustomModelData:6}}]} unless score @s afro.math_0 matches 0 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:0b,tag:{CustomModelData:6}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:1b,tag:{CustomModelData:6}}]} unless score @s afro.math_0 matches 1 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:1b,tag:{CustomModelData:6}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{CustomModelData:6}}]} unless score @s afro.math_0 matches 2 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{CustomModelData:6}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:3b,tag:{CustomModelData:6}}]} unless score @s afro.math_0 matches 3 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:3b,tag:{CustomModelData:6}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:4b,tag:{CustomModelData:6}}]} unless score @s afro.math_0 matches 4 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:4b,tag:{CustomModelData:6}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:5b,tag:{CustomModelData:6}}]} unless score @s afro.math_0 matches 5 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:5b,tag:{CustomModelData:6}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:6b,tag:{CustomModelData:6}}]} unless score @s afro.math_0 matches 6 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:6b,tag:{CustomModelData:6}}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:7b,tag:{CustomModelData:6}}]} unless score @s afro.math_0 matches 7 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:7b,tag:{CustomModelData:6}}].id set value "minecraft:emerald"
