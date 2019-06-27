# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\store.mcfunction

# Store x-coordinate into Pos NBT
execute store result entity @e[limit=1,tag=attack_bullet_ring_around_new] Pos[0] double 0.01 run scoreboard players get @s afro.math_4

# Store z-coordinate into Pos NBT
execute store result entity @e[limit=1,tag=attack_bullet_ring_around_new] Pos[2] double 0.01 run scoreboard players get @s afro.math_5
