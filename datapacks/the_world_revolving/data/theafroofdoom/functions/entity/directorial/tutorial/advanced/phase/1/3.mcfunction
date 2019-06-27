# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\phase\1\3.mcfunction

# Display text
tellraw @a[team=tutorial_adv] [{"color": "yellow", "translate": "tutorial.advanced.prefix", "with": [{"color":"green", "text":"["}, {"color": "aqua", "text": "+"}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.advanced.graze.3", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}, {"color": "aqua", "translate": "ui.grazing"}, {"color": "yellow", "translate": "ui.skip"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 100
