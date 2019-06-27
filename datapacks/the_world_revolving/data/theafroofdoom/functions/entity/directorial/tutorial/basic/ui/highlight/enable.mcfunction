# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\ui\highlight\enable.mcfunction

# Use the ModifyInv phi module to modularly edit the player's inventory
function phi.modifyinv:setup/mainhand

# Convert UI elements in mainhand to their highlighted version
function phi.modifyinv:load/mainhand
execute positioned -30000000 0 1602 run function theafroofdoom:entity/directorial/tutorial/basic/ui/highlight/enable_helper
function phi.modifyinv:apply/mainhand
