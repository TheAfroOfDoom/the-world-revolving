# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\8\0.mcfunction

# Display section header
tellraw @a[team=tutorial_basic] [{"text": "\n"}, {"color": "red", "translate": "tutorial.basic.end", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.end.0", "with": [{"color": "yellow", "translate": "tutorial.basic.type"}]}]

# Heal player
effect give @a[team=tutorial_basic] instant_health 10 0 true

# Set delay until next textbox
scoreboard players set @s tut_delay 140
