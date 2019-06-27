# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\summon_cutscene.mcfunction

# Summon the cutscene director
summon area_effect_cloud 0 4 -136 {CustomName:"\"Vanilla Intro Cutscene Director\"",Duration:2147483647,Tags:["the_world_revolving","directorial","cutscene","cutscene_new","cutscene_intro","cutscene_intro_vanilla"]}

# Initialize the cutscene director
execute as @e[tag=cutscene_new] at @s run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/initialize
