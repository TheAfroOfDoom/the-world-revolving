# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\fix_inventory\5\2.mcfunction

# Inventory:
#   - Sword (Disabled)
#   - Act.Check (Disabled)
#   - Magic.Pacify (Disabled)
#   - Tropical Fish - Dark Candy (Disabled)
#   - Defend
#   - Quit

# Run phase 0 function that checks for Quit button
function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/0

# While player has a disabled DEFEND, enable it if they are not doing and if their turn is not over
execute if entity @s[tag=!player_used_turn,tag=player_is_not_doing] if data entity @s {Inventory:[{id:"minecraft:diamond",tag:{CustomModelData:12}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/enable/defend
