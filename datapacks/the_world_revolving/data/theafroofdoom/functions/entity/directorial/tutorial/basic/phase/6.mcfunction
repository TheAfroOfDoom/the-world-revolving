# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\6.mcfunction

# Increment subindex
scoreboard players add @s tut_subphase 1

# Display based on subphase
execute if score @s tut_subphase matches 0 run function theafroofdoom:entity/directorial/tutorial/basic/phase/6/0
execute if score @s tut_subphase matches 1 run function theafroofdoom:entity/directorial/tutorial/basic/phase/6/1
execute if score @s tut_subphase matches 2 run function theafroofdoom:entity/directorial/tutorial/basic/phase/6/2
execute if score @s tut_subphase matches 3 run function theafroofdoom:entity/directorial/tutorial/basic/phase/6/3

# If subphase is final, go to next section
execute if score @s tut_subphase matches 4.. run scoreboard players add @s tut_phase 1

# Reset subindex
execute if score @s tut_subphase matches 4.. run scoreboard players set @s tut_subphase -1
