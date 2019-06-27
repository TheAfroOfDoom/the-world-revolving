# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\base\bullet\loop.mcfunction

# Runs every tick off entities tagged "attack_bullet_rain_active"

# Setup Bullet ID system
function theafroofdoom:entity/hostile/bullet_id/setup

# Teleport self upwards based on variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/rain/diamond/bullet/loop
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/rain/diamond_crippled/bullet/loop

# Kill self if sufficiently above the arena ceiling
execute store result score @s afro.math_0 run data get entity @s Pos[1] 1.0
scoreboard players remove @s afro.math_0 5
execute if score @s afro.math_0 >= #arena.ceiling.y constant run kill @e[scores={bullet_id=0}]

# Restore Bullet IDs
function theafroofdoom:entity/hostile/bullet_id/restore
