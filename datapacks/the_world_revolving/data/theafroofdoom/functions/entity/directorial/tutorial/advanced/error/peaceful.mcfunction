# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\error\peaceful.mcfunction

# Print error in chat
tellraw @a[team=tutorial_adv] [{"color": "red", "italic": "true", "translate": "error.tutorial.advanced.peaceful"}]

# Terminate tutorial
function theafroofdoom:entity/directorial/tutorial/advanced/terminate
