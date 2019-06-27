# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\fix_inventory.mcfunction

# Fixes any inventory issues depending on player's inventory (per phase)
execute if score @s tut_phase matches 0 run function theafroofdoom:entity/directorial/tutorial/basic/fix_inventory/0
execute if score @s tut_phase matches 1 run function theafroofdoom:entity/directorial/tutorial/basic/fix_inventory/1
execute if score @s tut_phase matches 2 run function theafroofdoom:entity/directorial/tutorial/basic/fix_inventory/2
execute if score @s tut_phase matches 3 run function theafroofdoom:entity/directorial/tutorial/basic/fix_inventory/3
execute if score @s tut_phase matches 4 run function theafroofdoom:entity/directorial/tutorial/basic/fix_inventory/4
execute if score @s tut_phase matches 5 run function theafroofdoom:entity/directorial/tutorial/basic/fix_inventory/5
execute if score @s tut_phase matches 6 run function theafroofdoom:entity/directorial/tutorial/basic/fix_inventory/6
execute if score @s tut_phase matches 7 run function theafroofdoom:entity/directorial/tutorial/basic/fix_inventory/7
execute if score @s tut_phase matches 8 run function theafroofdoom:entity/directorial/tutorial/basic/fix_inventory/8