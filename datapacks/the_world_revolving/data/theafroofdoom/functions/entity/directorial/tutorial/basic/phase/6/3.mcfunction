# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\6\3.mcfunction

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.tension_points.3", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}, {"color": "light_purple", "translate": "ui.magic.pacify"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay -2
