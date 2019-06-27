# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\0\3.mcfunction

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.intro.3", "with": [{"color": "yellow", "keybind": "key.use"}, {"color": "red", "translate": "block.minecraft.barrier"}, {"color": "dark_red", "translate": "ui.quit"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 140
