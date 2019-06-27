# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\7\3.mcfunction

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.items.3", "with": [{"color": "green", "translate": "ui.item"}]}]

# Damage player
effect give @a[team=tutorial_basic] instant_damage 1 1 true

# Set delay until next textbox
scoreboard players set @s tut_delay -2
