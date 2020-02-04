# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\items\enable.mcfunction

# Enables all items

# Use the ModifyInv phi module to modularly edit the player's inventory
function phi.modifyinv:setup/whole_inventory

# Convert items in hotbar to their enabled version
function phi.modifyinv:load/hotbar
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/enable_helper
function phi.modifyinv:apply/hotbar

# Convert items in offhand to their enabled version
function phi.modifyinv:load/offhand
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/enable_helper
function phi.modifyinv:apply/offhand

# Convert items in inventory to their enabled version
function phi.modifyinv:load/inventory
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/enable_helper
function phi.modifyinv:apply/inventory

