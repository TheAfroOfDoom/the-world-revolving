# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\summon_indicator.mcfunction

# Summon attack_indicator_cutscene_final_chaos
summon area_effect_cloud 0 132 0 {CustomName:"\"Cutscene Indicator Final Chaos\"",Duration:2000000,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_indicator","attack_indicator_cutscene","attack_indicator_cutscene_new","attack_indicator_cutscene_final_chaos"]}

# Initialize attack_indicator
execute as @e[tag=attack_indicator_cutscene_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/indicator/initialize
