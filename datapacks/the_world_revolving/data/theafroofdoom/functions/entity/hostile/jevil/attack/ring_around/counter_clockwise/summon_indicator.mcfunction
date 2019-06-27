# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\counter_clockwise\summon_indicator.mcfunction

# Setup Group ID System
function theafroofdoom:entity/group_id/setup

# Summon attack_indicator_ring_around_counter_clockwise
execute at @e[scores={group_id=0},tag=jevil_attack_originator] run summon area_effect_cloud ~ ~30 ~ {CustomName:"\"Ring Around Indicator Counter Clockwise\"",Duration:2000000,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_indicator","attack_indicator_ring_around","attack_indicator_ring_around_inactive","attack_indicator_ring_around_new","attack_indicator_ring_around_counter_clockwise"]}

# Restore Group IDs
function theafroofdoom:entity/group_id/restore

# Initialize attack_indicator
execute as @e[tag=attack_indicator_ring_around_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/ring_around/counter_clockwise/indicator/initialize

# Multiply attack_cone by attack_cone_mult for next indicator
scoreboard players operation #attack_ring_around_counter_clockwise attack_cone *= #attack_ring_around_counter_clockwise attack_cone_mult
