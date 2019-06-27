# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\fix_inventory\4\3.mcfunction

# Inventory:
#   - Sword
#   - Act.Check (Disabled)
#   - Magic.Pacify (Disabled)
#   - Tropical Fish - Dark Candy (Disabled)
#   - Defend (Disabled)
#   - Quit

# Run phase 0 function that checks for Quit button
function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/0

# While player has a disabled sword, enable it IF their turn is not over
execute if entity @s[tag=!player_used_turn] if data entity @s {Inventory:[{id:"minecraft:diamond",tag:{CustomModelData:19}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/enable/sword
