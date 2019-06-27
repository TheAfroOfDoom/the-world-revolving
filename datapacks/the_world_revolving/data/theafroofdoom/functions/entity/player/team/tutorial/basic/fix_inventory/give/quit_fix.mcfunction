# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\fix_inventory\give\quit_fix.mcfunction

# Initialize afro.math_0
scoreboard players set @s afro.math_0 -1

# Store current slot Quit button is in
execute if data entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"color":"dark_red","italic":"false","translate":"ui.quit"}'}}}] store result score @s afro.math_0 run data get entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"color":"dark_red","italic":"false","translate":"ui.quit"}'}}}].Slot

# Use the ModifyInv phi module to modularly edit the player's inventory
function phi.modifyinv:setup/whole_inventory

# Use phi based on which area Quit button was swapped to
execute if score @s afro.math_0 matches -1 run function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/give/quit_fix/empty
execute if score @s afro.math_0 matches 0..8 run function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/give/quit_fix/hotbar
execute if score @s afro.math_0 matches -106 run function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/give/quit_fix/offhand
execute if score @s afro.math_0 matches 9..35 run function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/give/quit_fix/inventory
