# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\quit.mcfunction

# Handle Quit interaction

# If player right clicks while holding Quit
execute if score @s coas_rclick matches 1.. if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"color":"dark_red","italic":"false","translate":"ui.quit"}'}}}} run function theafroofdoom:entity/player/team/credits/ui/select/quit

# Reset coas_rclick
scoreboard players reset @s coas_rclick
