# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\7\0.mcfunction

# Display section header
tellraw @a[team=tutorial_basic] [{"text": "\n"}, {"color": "green", "translate": "tutorial.basic.items", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.items.0", "with": [{"color": "green", "translate": "ui.items"}]}]

# Heal player
effect give @a[team=tutorial_basic] instant_health 10 0 true

# Set delay until next textbox
scoreboard players set @s tut_delay 140
