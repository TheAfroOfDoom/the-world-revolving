# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\fix_inventory\0.mcfunction

# Different inventories based on subphase

# Default inventory (only Quit)
execute unless score @s tut_subphase matches 3 as @a[team=tutorial_basic] at @s run function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/0

# Quit (Quit Highlighted)
execute if score @s tut_subphase matches 3 as @a[team=tutorial_basic] at @s run function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/0/3
