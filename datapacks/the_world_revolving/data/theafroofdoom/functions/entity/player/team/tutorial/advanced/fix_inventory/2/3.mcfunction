# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\fix_inventory\2\3.mcfunction

# magic

# Inventory:
#   - Skip (Disabled)
#   - Heal Prayer
#   - Rude Buster (Disabled)
#   - Quit

# Run phase 0 function that checks for quit button
function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/0

# While player has a disabled Heal Prayer, enable it if they are not doing and if their turn is not over
execute if entity @s[tag=!player_used_turn,tag=player_is_not_doing] if data entity @s {Inventory:[{id:"minecraft:diamond",tag:{CustomModelData:15}}]} run function theafroofdoom:entity/player/team/tutorial/advanced/items/enable/magic/heal_prayer

# While player has less than 32% TP, give them that minimum amount (if they are not doing and if their turn is not over)
execute if entity @s[scores={player_tpoints=..31},tag=!player_used_turn,tag=player_is_not_doing] run scoreboard players set @s player_tpoints 32
