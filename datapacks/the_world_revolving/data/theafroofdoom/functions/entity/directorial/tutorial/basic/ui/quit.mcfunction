# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\ui\quit.mcfunction

# Handle UI interaction (Quit only)

# If player right clicks while holding Quit
execute if score @s coas_rclick matches 1.. if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"color":"dark_red","italic":"false","translate":"ui.quit"}'}}}} run function theafroofdoom:entity/directorial/tutorial/basic/ui/select/quit

# Reset coas_rclick
scoreboard players reset @s coas_rclick
