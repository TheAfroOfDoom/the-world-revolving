# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\4\0.mcfunction

# Display section header
tellraw @a[team=tutorial_basic] [{"text": "\n"}, {"color": "red", "translate": "tutorial.basic.attack", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.attack.0", "with": [{"color": "red", "translate": "ui.fight"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 100
