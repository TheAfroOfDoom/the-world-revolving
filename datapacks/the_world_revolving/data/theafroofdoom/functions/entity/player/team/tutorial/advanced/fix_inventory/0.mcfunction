# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\fix_inventory\0.mcfunction

# intro

# Inventory:
#   - Quit

# Ensure player has a barrier in their last hotbar slot
execute unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b,tag:{CustomModelData:13}}]} run function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/give/quit
