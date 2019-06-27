# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\summon_tutorial.mcfunction

# Summons the tutorial director and initializes it

# Kill any pre-existing advanced tutorials (shouldn't exist, but just in case)
kill @e[tag=tutorial_advanced]

# Summon the tutorial director
summon area_effect_cloud 59 120 -143 {CustomName:"\"Basic Tutorial Director\"",Duration:2147483647,Tags:["the_world_revolving","directorial","tutorial","tutorial_new","tutorial_advanced"]}

# Initialize the tutorial director
execute as @e[tag=tutorial_new] at @s run function theafroofdoom:entity/directorial/tutorial/advanced/initialize
