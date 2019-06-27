# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\0\0.mcfunction

# Display section header
tellraw @a[team=tutorial_basic] [{"text": "\n"}, {"translate": "tutorial.basic.intro", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.intro.0", "with": [{"color": "yellow", "translate": "tutorial.basic.type"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 120
