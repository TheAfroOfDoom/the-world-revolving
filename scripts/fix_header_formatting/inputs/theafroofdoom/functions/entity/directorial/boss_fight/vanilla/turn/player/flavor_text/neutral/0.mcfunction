# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\flavor_text\neutral\0.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run title @a actionbar [{"text": "\uf002 "}, {"translate": "jevil.flavor.neutral.0"}]
execute if score #settings.text.location setting matches 1 run tellraw @a [{"text": "\uf002 "}, {"translate": "jevil.flavor.neutral.0"}]

# Remove tags to indicate flavor text has been displayed
tag @s remove boss_fight_needs_flavor_text
