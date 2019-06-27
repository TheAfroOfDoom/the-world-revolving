# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\fix_inventory\give\quit_fix\hotbar.mcfunction

# Load hotbar
function phi.modifyinv:load/hotbar

# Put item in hotbar.8 into Slot afro.math_0
execute store result block -30000000 0 1602 Items[{Slot:8b}].Slot byte 1 run scoreboard players get @s afro.math_0

# Apply new hotbar
function phi.modifyinv:apply/hotbar
