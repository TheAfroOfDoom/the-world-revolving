# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\speak\2.mcfunction

# Speak based on text subindex
execute if score @s afro.math_0 matches 0 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/speak/2/0
execute if score @s afro.math_0 matches 1 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/speak/2/1
execute if score @s afro.math_0 matches 2 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/speak/2/2
execute if score @s afro.math_0 matches 3 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/speak/2/3
execute if score @s afro.math_0 matches 4 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/speak/2/4
execute if score @s afro.math_0 matches 5 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/speak/2/5

# Increment subindex
scoreboard players add @s afro.math_0 1

# If subindex is on the last line of text, wait for next player interact
execute if score @s afro.math_0 matches 6.. run scoreboard players add @s cutscn_text_id 1
execute if score @s afro.math_0 matches 6.. run scoreboard players set @s cutscn_interact 0

# Reset subindex
execute if score @s afro.math_0 matches 6.. run scoreboard players set @s afro.math_0 0