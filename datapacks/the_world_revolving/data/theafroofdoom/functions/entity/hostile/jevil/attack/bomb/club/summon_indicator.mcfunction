# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\club\summon_indicator.mcfunction

# Setup Group ID System
function theafroofdoom:entity/group_id/setup

# Summon attack_indicator_bomb_club
execute at @e[scores={group_id=0},tag=jevil_attack_originator] run summon area_effect_cloud ~ ~ ~ {CustomName:"\"Bomb Indicator Club\"",Duration:2000000,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_indicator","attack_indicator_bomb","attack_indicator_bomb_new","attack_indicator_bomb_club"]}

# Restore Group IDs
function theafroofdoom:entity/group_id/restore

# Initialize attack_indicator
execute as @e[tag=attack_indicator_bomb_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/bomb/club/indicator/initialize

# Multiply attack_cone by attack_cone_mult for next indicator
scoreboard players operation #attack_bomb_club attack_cone *= #attack_bomb_club attack_cone_mult
