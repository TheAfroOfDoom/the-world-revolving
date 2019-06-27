# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\ui\highlight\disable.mcfunction

# Use the ModifyInv phi module to modularly edit the player's inventory
function phi.modifyinv:setup/whole_inventory

# Convert UI elements in hotbar to their unhighlighted version
function phi.modifyinv:load/hotbar
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/tutorial/advanced/ui/highlight/disable_helper/hotbar
function phi.modifyinv:apply/hotbar

# Convert UI elements in offhand to their unhighlighted version
function phi.modifyinv:load/offhand
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/tutorial/advanced/ui/highlight/disable_helper
function phi.modifyinv:apply/offhand

# Convert UI elements in inventory to their unhighlighted version
function phi.modifyinv:load/inventory
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/tutorial/advanced/ui/highlight/disable_helper
function phi.modifyinv:apply/inventory
