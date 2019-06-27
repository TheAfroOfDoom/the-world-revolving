# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\fix_inventory\6.mcfunction

# tension_points

# Inventory:
#   - Sword (Disabled)
#   - Act.Check (Disabled)
#   - Magic.Pacify (Disabled)
#   - Tropical Fish - Dark Candy (Disabled)
#   - Defend (Disabled)
#   - Quit

# Run phase 0 function that checks for Quit button
function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/0

# While player has an enabled DEFEND, disable it
execute if data entity @s {Inventory:[{id:"minecraft:emerald",tag:{CustomModelData:6}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/disable/defend
