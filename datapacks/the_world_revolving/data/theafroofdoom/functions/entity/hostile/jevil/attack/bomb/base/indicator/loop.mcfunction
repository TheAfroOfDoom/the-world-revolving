# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\indicator\loop.mcfunction

# Runs every tick off entities tagged "attack_indicator_bomb"

# afro.math_6 keeps track of what stage the indicator is at in its height
#   - 0: Descending
#   - 1: 3 ticks before hits ground

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Face closest player
teleport @s ~ ~ ~ facing entity @p[team=player]

# Summon bullets based on attack_diff 5 ticks before jevil phantom lands to fix Rotation de-sync bug based on variant
execute if score @s afro.math_6 matches 1 run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/afro.math_6/1

# Shoot based on attack_diff and terminate when jevil phantom lands
execute if score @s afro.math_6 matches 2 run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/afro.math_6/2

# Update afro.math_6 for next tick
execute if score @s afro.math_6 matches 1 run scoreboard players set @s afro.math_6 2

# Restore Group IDs
function theafroofdoom:entity/group_id/restore
