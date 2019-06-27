# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\wait.mcfunction

# What action we wait on depends on phase

# Wait for...
# Phase 1.4 - training_dummy's attack to finish
execute if score @s tut_phase matches 1 if score @s tut_subphase matches 4 if entity @e[tag=training_dummy_advanced,tag=training_dummy_is_not_attacking] unless score @a[limit=1,team=tutorial_adv] player_skip matches 1 run function theafroofdoom:entity/directorial/tutorial/advanced/phase/1/4

# Phase 1.4 - Player to select SKIP
execute if score @s tut_phase matches 1 if score @s tut_subphase matches 4 if entity @e[tag=training_dummy_advanced,tag=training_dummy_is_not_attacking] if score @a[limit=1,team=tutorial_adv] player_skip matches 1 run scoreboard players set @s tut_delay -1

# Phase 2.3 - Player's HEAL PRAYER to finish
execute if score @s tut_phase matches 2 if score @s tut_subphase matches 3 if entity @a[team=tutorial_adv,tag=player_used_turn] run scoreboard players set @s tut_delay -1

# Phase 2.6 - Player's RUDE BUSTER to finish
execute if score @s tut_phase matches 2 if score @s tut_subphase matches 6 if entity @a[team=tutorial_adv,tag=player_used_turn] run scoreboard players set @s tut_delay -1
