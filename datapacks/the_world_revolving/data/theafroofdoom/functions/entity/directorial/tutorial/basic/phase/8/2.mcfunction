# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\8\1.mcfunction

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.end.2", "with": [{"color": "dark_purple", "translate": "room.prison"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 200
