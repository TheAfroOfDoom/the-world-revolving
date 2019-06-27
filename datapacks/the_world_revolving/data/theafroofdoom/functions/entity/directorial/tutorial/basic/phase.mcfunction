# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase.mcfunction

# Reset player scores and remove tag
execute as @a[team=tutorial_basic] run function theafroofdoom:entity/player/team/tutorial/basic/reset_scores
tag @a[team=tutorial_basic] remove player_used_turn

# Display text based on cutscene_text if tut_delay = -1
execute if score @s tut_phase matches 0 run function theafroofdoom:entity/directorial/tutorial/basic/phase/0
execute if score @s tut_phase matches 1 run function theafroofdoom:entity/directorial/tutorial/basic/phase/1
execute if score @s tut_phase matches 2 run function theafroofdoom:entity/directorial/tutorial/basic/phase/2
execute if score @s tut_phase matches 3 run function theafroofdoom:entity/directorial/tutorial/basic/phase/3
execute if score @s tut_phase matches 4 run function theafroofdoom:entity/directorial/tutorial/basic/phase/4
execute if score @s tut_phase matches 5 run function theafroofdoom:entity/directorial/tutorial/basic/phase/5
execute if score @s tut_phase matches 6 run function theafroofdoom:entity/directorial/tutorial/basic/phase/6
execute if score @s tut_phase matches 7 run function theafroofdoom:entity/directorial/tutorial/basic/phase/7
execute if score @s tut_phase matches 8 run function theafroofdoom:entity/directorial/tutorial/basic/phase/8
