# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\fix_inventory\5.mcfunction

# defend

# Inventory:
#   - Sword (Disabled)
#   - Act.Check (Disabled)
#   - Magic.Pacify (Disabled)
#   - Tropical Fish - Dark Candy (Disabled)
#   - Defend (Disabled)
#   - Quit

# Run phase 0 function that checks for Quit button
function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/0

# While player has an enabled sword, disable it
execute if data entity @s {Inventory:[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/disable/sword
