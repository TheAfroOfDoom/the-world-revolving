# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\2\0.mcfunction

# Display section header
tellraw @a[team=tutorial_basic] [{"text": "\n"}, {"color": "blue", "translate": "tutorial.basic.dodge", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.dodge.0"}]

# Set delay until next textbox
scoreboard players set @s tut_delay 120
