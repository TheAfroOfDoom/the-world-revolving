# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\phase\1\1.mcfunction

# Display text
tellraw @a[team=tutorial_adv] [{"color": "yellow", "translate": "tutorial.advanced.prefix", "with": [{"color":"green", "text":"["}, {"color": "aqua", "text": "+"}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.advanced.graze.1", "with": [{"color": "blue", "translate": "ui.dodging"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 120
