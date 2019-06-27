# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\fix_inventory\7\3.mcfunction

# Inventory:
#   - Sword (Disabled)
#   - Act.Check (Disabled)
#   - Magic.Pacify (Disabled)
#   - Tropical Fish - Dark Candy
#   - Defend (Disabled)
#   - Quit

# Run phase 0 function that checks for Quit button
function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/0

# While player has a disabled Dark Candy, enable it
execute if data entity @s {Inventory:[{id:"minecraft:diamond",tag:{CustomModelData:3}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/enable/item/consumable/dark_candy
