# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\fix_inventory\0\2.mcfunction

# intro

# Inventory:
#   - Quit (Quit Highlighted)

# Ensure player has a barrier in their last hotbar slot
execute unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b,tag:{CustomModelData:15}}]} run function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/give/quit/quit
