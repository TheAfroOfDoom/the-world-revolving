# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\wait.mcfunction

# What action we wait on depends on phase

# Wait for...
# Phase 2.2 - training_dummy's attack to finish
execute if score @s tut_phase matches 2 if score @s tut_subphase matches 2 if entity @e[tag=training_dummy_basic,tag=training_dummy_is_not_attacking] run scoreboard players set @s tut_delay -1

# Phase 4.3 - Player's FIGHT to finish
execute if score @s tut_phase matches 4 if score @s tut_subphase matches 3 if entity @a[team=tutorial_basic,tag=player_used_turn] run scoreboard players set @s tut_delay -1

# Phase 5.2 - Player's DEFEND to finish
execute if score @s tut_phase matches 5 if score @s tut_subphase matches 2 if entity @a[team=tutorial_basic,tag=player_used_turn] run scoreboard players set @s tut_delay -1

# Phase 6.3 - Player's PACIFY to finish
execute if score @s tut_phase matches 6 if score @s tut_subphase matches 3 if entity @a[team=tutorial_basic,tag=player_used_turn] run scoreboard players set @s tut_delay -1

# Phase 7.3 - Player's ITEMS to finish
execute if score @s tut_phase matches 7 if score @s tut_subphase matches 3 if entity @a[team=tutorial_basic,tag=player_used_turn] run scoreboard players set @s tut_delay -1
