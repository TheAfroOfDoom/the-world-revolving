# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\6\0.mcfunction

# Display section header
tellraw @a[team=tutorial_basic] [{"text": "\n"}, {"color": "green", "translate": "tutorial.basic.tension_points", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.tension_points.0", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}, {"color": "aqua", "translate": "ui.act"}, {"color": "light_purple", "translate": "ui.magic"}]}]

# Clear effect from player
effect clear @a[team=tutorial_basic] resistance

# Set delay until next textbox
scoreboard players set @s tut_delay 140
