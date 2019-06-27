# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\basic\training_dummy\attack\shoot\example\summon_indicator.mcfunction

# Summon attack_indicator_shoot_example
summon area_effect_cloud ~ ~-0.5 ~-4 {CustomName:"\"Tutorial Basic Indicator\"",Duration:2000000,Tags:["the_world_revolving","directorial","tutorial_prop","tutorial_prop_basic","prop_attack","prop_attack_indicator","prop_attack_indicator_shoot","prop_attack_indicator_shoot_new","prop_attack_indicator_shoot_example"]}

# Initialize attack_indicator
execute as @e[tag=prop_attack_indicator_shoot_new] at @s run function theafroofdoom:entity/directorial/tutorial/prop/basic/training_dummy/attack/shoot/example/indicator/initialize
