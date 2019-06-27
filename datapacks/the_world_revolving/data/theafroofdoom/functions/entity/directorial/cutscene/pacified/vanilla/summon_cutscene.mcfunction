# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\pacified\vanilla\summon_cutscene.mcfunction

# Summon and initialize Jevil-pacified cutscene director
summon area_effect_cloud 0 4 -136 {CustomName:"\"Vanilla Pacified Cutscene Director\"",Duration:2147483647,Tags:["the_world_revolving","directorial","cutscene","cutscene_new","cutscene_pacified","cutscene_pacified_vanilla"]}
execute as @e[tag=cutscene_new] at @s run function theafroofdoom:entity/directorial/cutscene/pacified/vanilla/initialize
