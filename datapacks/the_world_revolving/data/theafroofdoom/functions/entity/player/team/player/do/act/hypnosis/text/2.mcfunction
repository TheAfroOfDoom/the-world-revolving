# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\hypnosis\text\2.mcfunction

# Display text based on global settings and if Jevil is tired
execute if score @e[tag=boss_fight,limit=1] bfight_tired matches ..0 if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"color": "aqua", "text": "\uf002 "},{"color": "aqua", "italic": true, "translate": "player.act.hypnosis.2.exhausted", "with": [{"selector": "@e[tag=jevil,limit=1]"}]}]
execute if score @e[tag=boss_fight,limit=1] bfight_tired matches ..0 if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"color": "aqua", "text": "\uf002 "},{"color": "aqua", "italic": true, "translate": "player.act.hypnosis.2.exhausted", "with": [{"selector": "@e[tag=jevil,limit=1]"}]}]

execute unless score @e[tag=boss_fight,limit=1] bfight_tired matches ..0 if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "},{"italic": true, "translate": "player.act.hypnosis.2.default", "with": [{"selector": "@e[tag=jevil,limit=1]"}, {"color": "aqua", "translate": "ui.tired"}]}]
execute unless score @e[tag=boss_fight,limit=1] bfight_tired matches ..0 if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "},{"italic": true, "translate": "player.act.hypnosis.2.default", "with": [{"selector": "@e[tag=jevil,limit=1]"}, {"color": "aqua", "translate": "ui.tired"}]}]
