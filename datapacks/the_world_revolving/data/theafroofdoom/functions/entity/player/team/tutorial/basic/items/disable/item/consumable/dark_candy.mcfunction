# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\items\disable\item\consumable\dark_candy.mcfunction

# Use the ModifyInv phi module to modularly edit the player's inventory
function phi.modifyinv:setup/whole_inventory

# Convert UI elements in hotbar to their unhighlighted version
function phi.modifyinv:load/hotbar
execute positioned -30000000 0 1602 run function theafroofdoom:entity/player/team/tutorial/basic/items/disable/item/consumable/dark_candy_helper
function phi.modifyinv:apply/hotbar

# Convert UI elements in offhand to their unhighlighted version
function phi.modifyinv:load/offhand
execute positioned -30000000 0 1602 run function theafroofdoom:entity/player/team/tutorial/basic/items/disable/item/consumable/dark_candy_helper
function phi.modifyinv:apply/offhand

# Convert UI elements in inventory to their unhighlighted version
function phi.modifyinv:load/inventory
execute positioned -30000000 0 1602 run function theafroofdoom:entity/player/team/tutorial/basic/items/disable/item/consumable/dark_candy_helper
function phi.modifyinv:apply/inventory
