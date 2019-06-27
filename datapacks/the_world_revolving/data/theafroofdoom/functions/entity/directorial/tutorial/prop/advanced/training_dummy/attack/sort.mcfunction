# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\attack\sort.mcfunction

# shoot
# # bullet
execute if entity @s[tag=prop_attack_bullet_shoot] run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/base/bullet/loop
# # indicator
execute if entity @s[tag=prop_attack_indicator_shoot] run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/base/indicator/loop
