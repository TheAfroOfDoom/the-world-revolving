# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\magic\pacify\text\0.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.magic.pacify", "with": [{"selector": "@s"}, {"color": "light_purple", "translate": "ui.magic.pacify"}]}]
execute if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.magic.pacify", "with": [{"selector": "@s"}, {"color": "light_purple", "translate": "ui.magic.pacify"}]}]
