# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\0\1.mcfunction

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.intro.1", "with": [{"color": "yellow", "translate": "tutorial.basic.type"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 100
