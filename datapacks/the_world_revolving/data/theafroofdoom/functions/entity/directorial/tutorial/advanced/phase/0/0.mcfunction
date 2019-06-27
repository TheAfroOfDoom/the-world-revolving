# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\phase\0\0.mcfunction

# Display section header
tellraw @a[team=tutorial_adv] [{"text": "\n"}, {"translate": "tutorial.advanced.intro", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_adv] [{"color": "yellow", "translate": "tutorial.advanced.prefix", "with": [{"color":"green", "text":"["}, {"color": "aqua", "text": "+"}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.advanced.intro.0", "with": [{"color": "aqua", "translate": "tutorial.advanced.type"}, {"color": "dark_purple", "translate": "jevil.name"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 120
