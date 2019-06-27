# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\phase\1\0.mcfunction

# Display section header
tellraw @a[team=tutorial_adv] [{"text": "\n"}, {"color": "aqua", "translate": "tutorial.advanced.graze", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_adv] [{"color": "yellow", "translate": "tutorial.advanced.prefix", "with": [{"color":"green", "text":"["}, {"color": "aqua", "text": "+"}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.advanced.graze.0", "with": [{"color": "aqua", "translate": "ui.graze"}, {"color": "green", "translate": "ui.tension_points.abbreviation"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 140

# Give UI items
# Skip
give @a[team=tutorial_adv] diamond{CustomModelData:20,display:{Name:'{"color":"yellow","italic":"false","translate":"ui.skip"}'},HideFlags:4,Unbreakable:1} 1
