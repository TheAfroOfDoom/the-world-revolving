# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\fix_inventory\1.mcfunction

# health

# Inventory:
#   - Quit (Health Highlighted)

# Ensure player has a barrier in their last hotbar slot
execute unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b,tag:{CustomModelData:14}}]} run function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/give/quit/health
