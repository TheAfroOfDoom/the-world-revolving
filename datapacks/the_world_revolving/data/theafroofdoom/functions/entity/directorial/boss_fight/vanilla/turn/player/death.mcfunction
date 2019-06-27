# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\death.mcfunction

# Terminate boss_fight
function theafroofdoom:entity/directorial/boss_fight/vanilla/terminate/player_death

# Summon and initialize player-death cutscene director
summon area_effect_cloud 0 51 10 {CustomName:'"Player Death Cutscene"',Duration:2147483647,Tags:["the_world_revolving","directorial","cutscene","cutscene_new","cutscene_player_death"]}
execute as @e[tag=cutscene_new] at @s run function theafroofdoom:entity/directorial/cutscene/player_death/initialize
