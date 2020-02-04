# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\summon_boss_fight.mcfunction

# Summons the boss fight marker and initializes it

# Kill any pre-existing boss fights
kill @e[tag=boss_fight]

# Summon the boss fight director
summon area_effect_cloud 0 4 0 {CustomName:"\"Vanilla Boss Fight Director\"",Duration:2147483647,Tags:["the_world_revolving","directorial","boss_fight","boss_fight_turn_begin","boss_fight_new","boss_fight_vanilla"]}

# Initialize the boss fight director
execute as @e[tag=boss_fight_new] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/initialize
