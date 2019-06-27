# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\hypnosis\text\1.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text":"\uf002 "},{"italic": true, "translate": "player.act.hypnosis.1", "with": [{"selector": "@e[tag=jevil]"}]}]
execute if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text":"\uf002 "},{"italic": true, "translate": "player.act.hypnosis.1", "with": [{"selector": "@e[tag=jevil]"}]}]
