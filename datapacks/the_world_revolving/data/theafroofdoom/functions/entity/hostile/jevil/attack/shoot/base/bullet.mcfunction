# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\bullet.mcfunction

# Runs every tick off entities tagged "attack_bullet_shoot_active"

# Teleport self forward based on variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/shoot/spade/bullet
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/shoot/diamond/bullet

# Detect if hit the edge of the arena (the black, not the blue/purple)
execute if block ~ ~ ~ #theafroofdoom:arena_wall run kill @s

# Move upwards if summoned inside the floor of the arena
execute if block ~ ~ ~ #theafroofdoom:arena_floor if entity @s[nbt={OnGround:1b}] run teleport ~ ~1 ~

# Move downwards if summoned inside a barrier block
execute if block ~ ~ ~ barrier run teleport ~ ~-1 ~
