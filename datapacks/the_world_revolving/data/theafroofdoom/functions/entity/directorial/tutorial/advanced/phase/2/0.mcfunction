# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\phase\2\0.mcfunction

# Display section header
tellraw @a[team=tutorial_adv] [{"text": "\n"}, {"color": "light_purple", "translate": "tutorial.advanced.magic", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_adv] [{"color": "yellow", "translate": "tutorial.advanced.prefix", "with": [{"color":"green", "text":"["}, {"color": "aqua", "text": "+"}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.advanced.magic.0", "with": [{"color": "light_purple", "translate": "ui.magic.heal_prayer"}, {"color": "light_purple", "translate": "ui.magic.rude_buster"}]}]

# Set delay until next textbox
scoreboard players set @s tut_delay 140

# Give UI items
# Magic.Heal Prayer
give @a[team=tutorial_adv] diamond{CustomModelData:15,display:{Lore:['{"color": "yellow", "italic": "false", "translate": "ui.magic.heal_prayer.tension_point_cost", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}]}','{"color": "light_purple", "italic": "false", "translate": "ui.magic.heal_prayer.heal_amount", "with": [{"color": "white", "text": "\\uf003"}]}'],Name:'{"color":"light_purple","italic":"false","translate":"ui.magic.heal_prayer"}'},HideFlags:4,Unbreakable:1} 1

# Magic.Rude Buster
give @a[team=tutorial_adv] diamond{CustomModelData:17,display:{Lore:['{"color": "gold", "translate": "ui.magic.rude_buster.description"}','{"color": "yellow", "italic": "false", "translate": "ui.magic.rude_buster.tension_point_cost", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}]}'],Name:'{"color":"light_purple","italic":"false","translate":"ui.magic.rude_buster"}'},HideFlags:4,Unbreakable:1} 1
