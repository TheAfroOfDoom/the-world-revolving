# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\phase\0\2.mcfunction

# Display text
tellraw @a[team=tutorial_adv] [{"color": "yellow", "translate": "tutorial.advanced.prefix", "with": [{"color":"green", "text":"["}, {"color": "aqua", "text": "+"}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.advanced.intro.2", "with": [{"color": "yellow", "keybind": "key.use"}, {"color": "red", "translate": "block.minecraft.barrier"}, {"color": "dark_red", "translate": "ui.quit"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 100
