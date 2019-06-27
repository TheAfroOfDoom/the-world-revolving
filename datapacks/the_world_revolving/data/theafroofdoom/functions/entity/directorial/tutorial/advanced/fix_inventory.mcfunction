# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\fix_inventory.mcfunction

# Fixes any inventory issues depending on player's inventory (per phase)
execute if score @s tut_phase matches 0 run function theafroofdoom:entity/directorial/tutorial/advanced/fix_inventory/0
execute if score @s tut_phase matches 1 run function theafroofdoom:entity/directorial/tutorial/advanced/fix_inventory/1
execute if score @s tut_phase matches 2 run function theafroofdoom:entity/directorial/tutorial/advanced/fix_inventory/2
execute if score @s tut_phase matches 3 run function theafroofdoom:entity/directorial/tutorial/advanced/fix_inventory/3
