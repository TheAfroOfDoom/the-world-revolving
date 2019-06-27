# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\3\3.mcfunction

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.inventory.3", "with": [{"color": "red", "translate": "ui.fight"}, {"color": "yellow", "keybind": "key.use"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 120
