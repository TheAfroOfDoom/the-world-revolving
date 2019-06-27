# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\error\peaceful.mcfunction

# Print error in chat
tellraw @a[team=tutorial_basic] [{"color": "red", "italic": "true", "translate": "error.tutorial.basic.peaceful"}]

# Terminate tutorial
function theafroofdoom:entity/directorial/tutorial/basic/terminate
