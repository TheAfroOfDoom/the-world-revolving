# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\fix_inventory\3.mcfunction

# end

# Inventory:
#   - Skip (Disabled)
#   - Heal Prayer (Disabled)
#   - Rude Buster (Disabled)
#   - Quit

# Run phase 0 function that checks for Quit button
function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/0

# While player has an enabled Heal Prayer, disable it
execute if data entity @s {Inventory:[{id:"minecraft:emerald",tag:{CustomModelData:9}}]} run function theafroofdoom:entity/player/team/tutorial/advanced/items/disable/magic/heal_prayer

# While player has an enabled Rude Buster, disable it
execute if data entity @s {Inventory:[{id:"minecraft:emerald",tag:{CustomModelData:11}}]} run function theafroofdoom:entity/player/team/tutorial/advanced/items/disable/magic/rude_buster
