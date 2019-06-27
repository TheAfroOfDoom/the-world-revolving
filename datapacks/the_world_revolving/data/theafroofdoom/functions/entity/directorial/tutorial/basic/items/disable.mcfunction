# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\items\disable.mcfunction

# Disables all items

# Use the ModifyInv phi module to modularly edit the player's inventory
function phi.modifyinv:setup/whole_inventory

# Convert items in hotbar to their disabled version
function phi.modifyinv:load/hotbar
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/tutorial/basic/items/disable_helper
function phi.modifyinv:apply/hotbar

# Convert items in offhand to their disabled version
function phi.modifyinv:load/offhand
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/tutorial/basic/items/disable_helper
function phi.modifyinv:apply/offhand

# Convert items in inventory to their disabled version
function phi.modifyinv:load/inventory
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/tutorial/basic/items/disable_helper
function phi.modifyinv:apply/inventory

# Give weakness to players so they can't cause attack animation
effect give @s weakness 1000000 100 true
