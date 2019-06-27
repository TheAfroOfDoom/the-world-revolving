# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\phase.mcfunction

# Reset player scores and remove tag
execute as @a[team=tutorial_adv] run function theafroofdoom:entity/player/team/tutorial/advanced/reset_scores
tag @a[team=tutorial_adv] remove player_used_turn

# Display text based on cutscene_text if tut_delay = -1
execute if score @s tut_phase matches 0 run function theafroofdoom:entity/directorial/tutorial/advanced/phase/0
execute if score @s tut_phase matches 1 run function theafroofdoom:entity/directorial/tutorial/advanced/phase/1
execute if score @s tut_phase matches 2 run function theafroofdoom:entity/directorial/tutorial/advanced/phase/2
execute if score @s tut_phase matches 3 run function theafroofdoom:entity/directorial/tutorial/advanced/phase/3
