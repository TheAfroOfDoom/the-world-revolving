# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\flavor_text\tired.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"translate": "jevil.flavor.tired", "with": [{"selector": "@e[tag=jevil]"}]}]
execute if score #settings.text.location setting matches 1 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"translate": "jevil.flavor.tired", "with": [{"selector": "@e[tag=jevil]"}]}]

# Remove tags to indicate flavor text has been displayed
tag @s remove boss_fight_needs_flavor_text
