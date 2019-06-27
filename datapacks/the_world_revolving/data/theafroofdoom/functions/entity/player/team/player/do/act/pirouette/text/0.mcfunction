# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\text\0.mcfunction

# First line of text

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.0", "with": [{"selector": "@s"}, {"selector": "@e[tag=jevil]"}, {"color": "aqua", "translate": "ui.tired"}]}]
execute if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.0", "with": [{"selector": "@s"}, {"selector": "@e[tag=jevil]"}, {"color": "aqua", "translate": "ui.tired"}]}]
