# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\phase\6.mcfunction

# Phase 6 only displays if credits are playing from after the boss fight

# Increment subindex
scoreboard players add @s credits_subphase 1

# If player is NOT from the boss fight, skip this
execute unless score @s player_credits matches 0 run scoreboard players add @s credits_subphase 1

# Display based on subphase
execute if score @s credits_subphase matches 0 run function theafroofdoom:entity/player/team/credits/phase/6/0

# If subphase is final, go to next section
execute if score @s credits_subphase matches 1.. run scoreboard players add @s credits_phase 1

# Reset subindex
execute if score @s credits_subphase matches 1.. run scoreboard players set @s credits_subphase -1
