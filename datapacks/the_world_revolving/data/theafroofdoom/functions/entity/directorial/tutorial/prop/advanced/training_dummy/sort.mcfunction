# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\sort.mcfunction

# base loop
function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/loop

# shoot
execute if entity @s[tag=training_dummy_is_attacking_shoot] run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/base/loop
