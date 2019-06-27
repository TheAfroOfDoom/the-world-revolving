# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\fix_inventory\7.mcfunction

# items

# Inventory:
#   - Sword (Disabled)
#   - Act.Check (Disabled)
#   - Magic.Pacify (Disabled)
#   - Tropical Fish - Dark Candy (Disabled)
#   - Defend (Disabled)
#   - Quit

# Run phase 0 function that checks for Quit button
function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/0

# While player has an enabled PACIFY, disable it
execute if data entity @s {Inventory:[{id:"minecraft:emerald",tag:{CustomModelData:10}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/disable/magic/pacify
