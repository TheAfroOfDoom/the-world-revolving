# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\phase\2\1.mcfunction

# Display text
tellraw @a[team=tutorial_adv] [{"color": "yellow", "translate": "tutorial.advanced.prefix", "with": [{"color":"green", "text":"["}, {"color": "aqua", "text": "+"}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.advanced.magic.1", "with": [{"color": "light_purple", "translate": "ui.magic.heal_prayer"}, {"color": "green", "translate": "ui.tension_points.abbreviation"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 120
