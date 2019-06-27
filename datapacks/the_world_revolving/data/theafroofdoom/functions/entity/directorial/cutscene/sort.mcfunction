# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\sort.mcfunction

# death
execute if entity @s[tag=cutscene_death] run function theafroofdoom:entity/directorial/cutscene/death/sort

# intro
execute if entity @s[tag=cutscene_intro] run function theafroofdoom:entity/directorial/cutscene/intro/sort

# pacified
execute if entity @s[tag=cutscene_pacified] run function theafroofdoom:entity/directorial/cutscene/pacified/sort

# player_death
execute if entity @s[tag=cutscene_player_death] run function theafroofdoom:entity/directorial/cutscene/player_death/sort
