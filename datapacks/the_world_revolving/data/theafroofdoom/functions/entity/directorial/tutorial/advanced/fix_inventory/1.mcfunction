# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\fix_inventory\1.mcfunction

# Default inventory (disabled Items)
execute unless score @s tut_subphase matches 4 as @a[team=tutorial_adv] at @s run function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/1

# Enabled Skip
execute if score @s tut_subphase matches 4 as @a[team=tutorial_adv] at @s run function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/1/4
