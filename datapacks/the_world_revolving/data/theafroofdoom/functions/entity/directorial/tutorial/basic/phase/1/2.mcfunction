# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\1\2.mcfunction

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.health.2"}]

# Set delay until next textbox
scoreboard players set @s tut_delay 120
