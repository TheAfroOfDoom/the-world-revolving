# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\death\vanilla\summon_cutscene.mcfunction

# Summon and initialize Jevil-death cutscene director
summon area_effect_cloud 0 4 -136 {CustomName:"\"Vanilla Death Cutscene Director\"",Duration:2147483647,Tags:["the_world_revolving","directorial","cutscene","cutscene_new","cutscene_death","cutscene_death_vanilla"]}
execute as @e[tag=cutscene_new] at @s run function theafroofdoom:entity/directorial/cutscene/death/vanilla/initialize
