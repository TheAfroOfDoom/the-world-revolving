# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\circle\summon_indicator.mcfunction

# Setup Group ID System
function theafroofdoom:entity/group_id/setup

# Summon attack_indicator_sentry_circle
execute at @e[scores={group_id=0},tag=jevil_attack_originator] run summon area_effect_cloud ~ ~ ~ {CustomName:"\"Sentry Indicator Circle\"",Duration:2000000,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_indicator","attack_indicator_sentry","attack_indicator_sentry_new","attack_indicator_sentry_circle"]}

# Restore Group IDs
function theafroofdoom:entity/group_id/restore

# Initialize attack_indicator
execute as @e[tag=attack_indicator_sentry_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/indicator/initialize
