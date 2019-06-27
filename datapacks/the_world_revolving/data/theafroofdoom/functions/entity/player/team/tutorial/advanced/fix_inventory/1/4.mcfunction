# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\fix_inventory\1\4.mcfunction

# graze

# Inventory:
#   - Skip (Enabled)
#   - Quit

# Run phase 0 function that checks for quit button
function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/0

# While player has a disabled SKIP, enable it if they are not doing and if their turn is not over
execute if entity @s[tag=!player_used_turn,tag=player_is_not_doing] if data entity @s {Inventory:[{id:"minecraft:diamond",tag:{CustomModelData:20}}]} run function theafroofdoom:entity/player/team/tutorial/advanced/items/enable/skip
