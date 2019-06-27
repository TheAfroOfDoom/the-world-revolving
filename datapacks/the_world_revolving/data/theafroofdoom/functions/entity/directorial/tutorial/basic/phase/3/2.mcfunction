# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\3\2.mcfunction

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.inventory.2", "with": [{"color": "red", "translate": "ui.fight"}, {"color": "aqua", "translate": "ui.act"}, {"color": "green", "translate": "ui.items"}, {"color": "light_purple", "translate": "ui.magic"}, {"color": "yellow", "translate": "ui.defend"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 120
