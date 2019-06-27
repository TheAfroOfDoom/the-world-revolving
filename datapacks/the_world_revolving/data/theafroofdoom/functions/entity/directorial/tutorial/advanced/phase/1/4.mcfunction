# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\phase\1\4.mcfunction

# Reset tension_points
scoreboard players set @a[team=tutorial_adv] player_tpoints 0

# Heal player
effect give @a[team=tutorial_adv] instant_health 10 4 true

# Run attack
execute as @e[tag=training_dummy_advanced] at @s run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/initialize

# Set delay until next textbox
scoreboard players set @s tut_delay -2
