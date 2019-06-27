# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\2\2.mcfunction

# Display text
#tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.dodge.2"}]

# Run attack
execute as @e[tag=training_dummy_basic] at @s run function theafroofdoom:entity/directorial/tutorial/prop/basic/training_dummy/attack/shoot/example/initialize

# Wait until attack is over for next phase
scoreboard players set @s tut_delay -2
