# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\terminate.mcfunction

# Runs at the end of jevil's turn during the boss fight

# Set scores
scoreboard players set @s bfight_turn 0

# Increment turn index
scoreboard players add @s bfight_index 1

# Set Jevil to tired if too many turns have passed and if we are on the final phase
execute if score @s bfight_phase matches 4.. if score @s bfight_index >= @s bfight_length unless score @s bfight_tired matches ..0 run scoreboard players set @s bfight_tired 0

# Add tags
tag @s add boss_fight_turn_begin

# Reset players' specific scores and tags as a safety
execute as @a[team=player] at @s run function theafroofdoom:entity/player/team/player/reset_scores
execute as @a[team=player] at @s run function theafroofdoom:entity/player/team/player/reset_tags
effect clear @a[team=player] weakness

# Remove players' specific effects
effect clear @a[team=player] resistance
