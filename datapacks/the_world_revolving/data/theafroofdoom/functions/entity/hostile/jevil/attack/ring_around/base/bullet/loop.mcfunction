# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\bullet\loop.mcfunction

# Runs every tick off entities tagged "attack_bullet_ring_around_active"

# Increment attack_clock (0-...) if on ground a second time
execute if score @s attack_clock <= @s attack_wrp_end run scoreboard players add @s attack_clock 1

# Teleport self backwards based on variant while attack_clock < attack_wrp_end
execute if score @s attack_clock matches 0.. if score @s attack_clock < @s attack_wrp_end run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/bullet/condition/attack_clock/pre_attack_wrp_end

# Teleport self forwards based on variant while attack_clock > attack_wrp_end
execute if score @s attack_clock matches 0.. if score @s attack_clock > @s attack_wrp_end run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/bullet/condition/attack_clock/post_attack_wrp_end

# Detect if hit the edge of the arena (the black, not the blue/purple)
execute if block ~ ~ ~ #theafroofdoom:arena_wall run kill @s
