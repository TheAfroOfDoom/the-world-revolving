# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\sort.mcfunction

# active
execute if entity @s[tag=attack_indicator_ring_around_active] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/loop

# inactive
execute if entity @s[tag=attack_indicator_ring_around_inactive] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/loop_inactive
