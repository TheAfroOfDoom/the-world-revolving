# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\highlight\disable_helper\hotbar.mcfunction

# NOTE(jordan): Add to this list if we add more items

# Edit the shulker box
# Convert UI elements to their unhighlighted version

# Store selected slot number into a score
execute store result score @s afro.math_0 run data get entity @s SelectedItemSlot

# Go through whole hotbar and check if slot number is the mainhand.  If not, replace the item.
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:0b}]} unless score @s afro.math_0 matches 0 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:0b}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]} unless score @s afro.math_0 matches 1 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:1b}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:2b}]} unless score @s afro.math_0 matches 2 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:2b}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]} unless score @s afro.math_0 matches 3 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:3b}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:4b}]} unless score @s afro.math_0 matches 4 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:4b}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:5b}]} unless score @s afro.math_0 matches 5 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:5b}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]} unless score @s afro.math_0 matches 6 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:6b}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:7b}]} unless score @s afro.math_0 matches 7 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:7b}].id set value "minecraft:emerald"
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick",Slot:8b}]} unless score @s afro.math_0 matches 8 run data modify block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",Slot:8b}].id set value "minecraft:emerald"
