# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\diamond\summon_indicator.mcfunction

# Setup Group ID System
function theafroofdoom:entity/group_id/setup

# Summon attack_indicator_shoot_diamond
execute at @e[scores={group_id=0},tag=jevil_attack_originator] run summon area_effect_cloud ~ ~ ~ {CustomName:"\"Shoot Indicator Diamond\"",Duration:2000000,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_indicator","attack_indicator_shoot","attack_indicator_shoot_new","attack_indicator_shoot_diamond"]}

# Restore Group IDs
function theafroofdoom:entity/group_id/restore

# Initialize attack_indicator
execute as @e[tag=attack_indicator_shoot_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/shoot/diamond/indicator/initialize
