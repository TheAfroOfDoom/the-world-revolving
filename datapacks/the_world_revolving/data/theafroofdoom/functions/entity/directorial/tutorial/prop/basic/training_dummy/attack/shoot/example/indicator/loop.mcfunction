# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\basic\training_dummy\attack\shoot\example\indicator\loop.mcfunction

# Increment attack_clock
scoreboard players add @s attack_clock 1

# Summon bullet on first tick after randomizing location
execute if score @s attack_clock matches 0 at @s run function theafroofdoom:entity/directorial/tutorial/prop/basic/training_dummy/attack/shoot/example/indicator/summon_bullet

# Terminate at attack_clock = 40
execute if score @s attack_clock matches 40 run function theafroofdoom:entity/directorial/tutorial/prop/basic/training_dummy/attack/shoot/example/indicator/terminate
