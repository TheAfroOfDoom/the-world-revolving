# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\magic\heal_prayer\text\0.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @s [{"text":"\uf002 "},{"italic": true, "translate": "player.magic.rude_buster", "with": [{"selector": "@s"}, {"color": "light_purple", "translate": "ui.magic.rude_buster"}]}]
execute if score #settings.text.location setting matches 1 run title @s actionbar [{"text":"\uf002 "},{"italic": true, "translate": "player.magic.rude_buster", "with": [{"selector": "@s"}, {"color": "light_purple", "translate": "ui.magic.rude_buster"}]}]
