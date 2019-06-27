# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\phase\3\0.mcfunction

# Display section header
tellraw @a[team=tutorial_adv] [{"text": "\n"}, {"color": "red", "translate": "tutorial.advanced.end", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_adv] [{"color": "yellow", "translate": "tutorial.advanced.prefix", "with": [{"color":"green", "text":"["}, {"color": "aqua", "text": "+"}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.advanced.end.0", "with": [{"color": "aqua", "translate": "tutorial.advanced.type"}]}]

# Heal player
effect give @a[team=tutorial_adv] instant_health 10 0 true

# Reset tension_points
scoreboard players set @a[team=tutorial_adv] player_tpoints 0

# Set delay until next textbox
scoreboard players set @s tut_delay 140
