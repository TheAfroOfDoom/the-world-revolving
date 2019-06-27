# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\fix_inventory.mcfunction

# Inventory:
#   - Quit

# Ensure player has a barrier in their last hotbar slot only if they are not in the boss_fight credits
execute unless score @s player_credits matches 0 unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b,tag:{CustomModelData:13}}]} run function theafroofdoom:entity/player/team/credits/fix_inventory/give/quit
