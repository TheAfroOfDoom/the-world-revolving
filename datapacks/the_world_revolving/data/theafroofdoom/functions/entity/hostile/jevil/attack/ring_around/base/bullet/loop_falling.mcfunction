# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\bullet\loop_falling.mcfunction

# Runs every tick off entities tagged "attack_bullet_ring_around_falling"

execute if score @s afro.math_2 < #2 constant run scoreboard players add @s afro.math_2 1

# Update tags when hits ground
execute if score @s afro.math_2 >= #2 constant run execute if score @s afro.math_1 <= #arena.floor.y constant run execute if entity @s[nbt={OnGround:1b}] run tag @s add attack_bullet_ring_around_grounded
execute if score @s afro.math_2 >= #2 constant run execute if entity @s[tag=attack_bullet_ring_around_grounded] run tag @s remove attack_bullet_ring_around_falling

# Descend
execute if score @s afro.math_2 >= #2 constant run execute if score @s afro.math_1 > #arena.floor.y constant run teleport @s ~ ~-1 ~

# Update future height score
execute if score @s afro.math_2 >= #2 constant run execute if score @s afro.math_1 > #arena.floor.y constant run scoreboard players remove @s afro.math_0 100

# If future height score is close enough to floor, stop descending using teleport
# and start falling with motion so OnGround updates properly
#
# Set afro.math_1 = afro.math_0 but on the same order of magnitude as #arena.floor.y
execute if score @s afro.math_2 >= #2 constant run execute if score @s afro.math_1 > #arena.floor.y constant run scoreboard players operation @s afro.math_1 = @s afro.math_0
execute if score @s afro.math_2 >= #2 constant run execute if score @s afro.math_1 > #arena.floor.y constant run scoreboard players operation @s afro.math_1 /= #100 constant
