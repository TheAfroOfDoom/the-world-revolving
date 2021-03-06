# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\phase\0.mcfunction

# Increment subindex
scoreboard players add @s credits_subphase 1

# Display based on subphase
execute if score @s credits_subphase matches 0 run function theafroofdoom:entity/player/team/credits/phase/0/0
execute if score @s credits_subphase matches 1 run function theafroofdoom:entity/player/team/credits/phase/0/1

# If subphase is final, go to next section
execute if score @s credits_subphase matches 2.. run scoreboard players add @s credits_phase 1

# Reset subindex
execute if score @s credits_subphase matches 2.. run scoreboard players set @s credits_subphase -1
