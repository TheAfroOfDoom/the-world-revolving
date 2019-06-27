# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\fix_inventory\4.mcfunction

# Different inventories based on subphase

# Default inventory
execute unless score @s tut_subphase matches 3 as @a[team=tutorial_basic] at @s run function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/4

# Fight Highlighted
execute if score @s tut_subphase matches 3 as @a[team=tutorial_basic] at @s run function theafroofdoom:entity/player/team/tutorial/basic/fix_inventory/4/3
