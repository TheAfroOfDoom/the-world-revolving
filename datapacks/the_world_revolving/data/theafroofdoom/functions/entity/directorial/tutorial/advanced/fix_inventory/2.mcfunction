# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\fix_inventory\2.mcfunction

# Default inventory (disabled Items)
execute unless score @s tut_subphase matches 3 unless score @s tut_subphase matches 6 as @a[team=tutorial_adv] at @s run function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/2

# Enabled Heal Prayer
execute if score @s tut_subphase matches 3 as @a[team=tutorial_adv] at @s run function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/2/3

# Enabled Rude Buster
execute if score @s tut_subphase matches 6 as @a[team=tutorial_adv] at @s run function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/2/6
