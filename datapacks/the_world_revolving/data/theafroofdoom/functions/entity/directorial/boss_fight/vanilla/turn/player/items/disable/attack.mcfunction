# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\items\disable\attack.mcfunction

# Disables all UI elements and items excluding attack

# Use the ModifyInv phi module to modularly edit the player's inventory
function phi.modifyinv:setup/whole_inventory

# Convert items in hotbar to their disabled version
function phi.modifyinv:load/hotbar
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable/attack_helper
function phi.modifyinv:apply/hotbar

# Convert items in offhand to their disabled version
function phi.modifyinv:load/offhand
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable/attack_helper
function phi.modifyinv:apply/offhand

# Convert items in inventory to their disabled version
function phi.modifyinv:load/inventory
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable/attack_helper
function phi.modifyinv:apply/inventory
