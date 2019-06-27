# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\bullet\sort.mcfunction

# active
execute if entity @s[tag=attack_bullet_ring_around_active] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/bullet/loop

# falling
execute if entity @s[tag=attack_bullet_ring_around_falling] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/bullet/loop_falling
