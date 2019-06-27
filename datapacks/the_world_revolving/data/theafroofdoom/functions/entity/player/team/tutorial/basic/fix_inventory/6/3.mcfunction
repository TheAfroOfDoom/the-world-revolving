# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\fix_inventory\6\3.mcfunction

# Inventory:
#   - Sword (Disabled)
#   - Act.Check (Disabled)
#   - Magic.Pacify
#   - Tropical Fish - Dark Candy (Disabled)
#   - Defend (Disabled)
#   - Quit

# Run phase 0 function that checks for Quit button
function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/0

# While player has a disabled PACIFY, enable it if they are not doing and if their turn is not over
execute if entity @s[tag=!player_used_turn,tag=player_is_not_doing] if data entity @s {Inventory:[{id:"minecraft:diamond",tag:{CustomModelData:16}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/enable/magic/pacify

# While player has less than 16% TP, give them that minimum amount (if they are not doing and if their turn is not over)
execute if entity @s[scores={player_tpoints=..15},tag=!player_used_turn,tag=player_is_not_doing] run scoreboard players set @s player_tpoints 16
