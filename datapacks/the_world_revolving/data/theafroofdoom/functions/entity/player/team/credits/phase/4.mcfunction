# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\phase\4.mcfunction

# Increment subindex
scoreboard players add @s credits_subphase 1

# REVIEW(jordan): Uncomment this as translators finish
# Display based on subphase
#execute if score @s credits_subphase matches 0 run function theafroofdoom:entity/player/team/credits/phase/4/0

# If subphase is final, go to next section
execute if score @s credits_subphase matches 0.. run scoreboard players add @s credits_phase 1

# Reset subindex
execute if score @s credits_subphase matches 0.. run scoreboard players set @s credits_subphase -1
