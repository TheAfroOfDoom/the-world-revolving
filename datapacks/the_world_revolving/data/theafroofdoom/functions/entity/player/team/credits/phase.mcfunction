# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\phase.mcfunction

# Display text based on cutscene_text if credits_delay = -1
execute if score @s credits_phase matches 0 run function theafroofdoom:entity/player/team/credits/phase/0
execute if score @s credits_phase matches 1 run function theafroofdoom:entity/player/team/credits/phase/1
execute if score @s credits_phase matches 2 run function theafroofdoom:entity/player/team/credits/phase/2
execute if score @s credits_phase matches 3 run function theafroofdoom:entity/player/team/credits/phase/3
execute if score @s credits_phase matches 4 run function theafroofdoom:entity/player/team/credits/phase/4
execute if score @s credits_phase matches 5 run function theafroofdoom:entity/player/team/credits/phase/5
execute if score @s credits_phase matches 6 run function theafroofdoom:entity/player/team/credits/phase/6
