# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\death\vanilla\speak\0.mcfunction

# Speak based on text subindex
execute if score @s afro.math_0 matches 0 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/0
execute if score @s afro.math_0 matches 1 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/1
execute if score @s afro.math_0 matches 2 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/2
execute if score @s afro.math_0 matches 3 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/3
execute if score @s afro.math_0 matches 4 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/4
execute if score @s afro.math_0 matches 5 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/5
execute if score @s afro.math_0 matches 6 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/6
execute if score @s afro.math_0 matches 7 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/7
execute if score @s afro.math_0 matches 8 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/8
execute if score @s afro.math_0 matches 9 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/9
execute if score @s afro.math_0 matches 10 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/10
execute if score @s afro.math_0 matches 11 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0/11

# Increment subindex
scoreboard players add @s afro.math_0 1

# If subindex is on the last line of text, wait for next player interact
execute if score @s afro.math_0 matches 12.. run scoreboard players add @s cutscn_text_id 1
execute if score @s afro.math_0 matches 12.. run scoreboard players set @s cutscn_interact 0

# Reset subindex
execute if score @s afro.math_0 matches 12.. run scoreboard players set @s afro.math_0 0
