# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\8\1.mcfunction

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.end.1", "with": [{"color": "red", "translate": "ui.fight"}, {"color": "dark_purple", "translate": "jevil.name"}, {"color": "aqua", "translate": "tutorial.advanced.type"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 140
