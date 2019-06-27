# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\loop.mcfunction

# Runs every tick off entities tagged "tutorial_advanced"

# Print error and quit boss_fight if difficulty is Peaceful
execute store result score @s afro.math_3 run difficulty
execute if score @s afro.math_3 matches 0 run function theafroofdoom:entity/directorial/tutorial/advanced/error/peaceful

# Decrement tut_delay
execute if score @s tut_delay matches 0.. run scoreboard players remove @s tut_delay 1

# Wait for certain actions if tut_delay = -2
execute if score @s tut_delay matches -2 run function theafroofdoom:entity/directorial/tutorial/advanced/wait

# Display text based on cutscene_text if tut_delay = -1
execute if score @s tut_delay matches -1 run function theafroofdoom:entity/directorial/tutorial/advanced/phase

# Fixes any inventory issues depending on player's inventory (per phase)
function theafroofdoom:entity/directorial/tutorial/advanced/fix_inventory

# Give player weakness so they cannot deal damage unless they are holding a sword
execute as @a[team=tutorial_adv] unless data entity @s {ActiveEffects:[{Id:18b}]} unless data entity @s {SelectedItem:{id:"minecraft:diamond_sword"}} run effect give @s weakness 1000000 100 true
execute as @a[team=tutorial_adv] if data entity @s {ActiveEffects:[{Id:18b}],SelectedItem:{id:"minecraft:diamond_sword"}} run effect clear @s weakness

# Handle UI behavior
execute as @a[tag=player_is_not_doing,tag=!player_used_turn,team=tutorial_adv] at @s run function theafroofdoom:entity/directorial/tutorial/advanced/ui

# Handle UI behavior (Quit only)
execute as @a[team=tutorial_adv] at @s run function theafroofdoom:entity/directorial/tutorial/advanced/ui/quit

# If all phases have finished, terminate and move player back to lobby
execute if score @s tut_delay matches -1 if score @s tut_phase matches 4 run function theafroofdoom:entity/directorial/tutorial/advanced/terminate
