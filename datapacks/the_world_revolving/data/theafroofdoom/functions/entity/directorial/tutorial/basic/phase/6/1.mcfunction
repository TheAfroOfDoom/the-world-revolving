# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\6\1.mcfunction

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.tension_points.1", "with": [{"color": "aqua", "translate": "ui.tired"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 120
