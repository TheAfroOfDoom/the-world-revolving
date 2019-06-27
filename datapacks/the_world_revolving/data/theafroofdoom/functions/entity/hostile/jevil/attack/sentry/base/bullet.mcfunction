# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\bullet.mcfunction

# Runs every tick off entities tagged "attack_bullet_sentry_active"

# While sequence_id > 0, face player and add yaw offset
execute if score @s sequence_id matches 2.. run teleport @s ~ ~ ~ facing entity @p[team=player]
#execute if score @s sequence_id matches 1.. store result score @s afro.math_1 run data get entity @s Rotation[0]
#execute if score @s sequence_id matches 1.. run scoreboard players operation @s afro.math_1 += @s afro.math_0
#execute if score @s sequence_id matches 1.. store result entity @s Rotation[0] float 1 run scoreboard players get @s afro.math_1

# Teleport self based on variant
# Add facing offset here
execute if score @s sequence_id matches 1 store result score @s afro.math_1 run data get entity @s Rotation[0] 1
execute if score @s sequence_id matches 1 run scoreboard players operation @s afro.math_1 += @s afro.math_0
execute if score @s sequence_id matches 1 store result entity @s Rotation[0] float 1 run scoreboard players get @s afro.math_1
execute if score @s sequence_id matches 1 run data modify entity @s Rotation[1] set value 0.0f

execute if score @s sequence_id matches 0 if score @s attack_variant matches -1 run function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/bullet

# Decrement sequence_id by 1 each tick
execute if score @s sequence_id matches 1.. run scoreboard players remove @s sequence_id 1

# Detect if hit the edge of the arena (the black, not the blue/purple)
execute if block ~ ~ ~ #theafroofdoom:arena_wall run kill @s
