# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\phase\6.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.6"}]
execute if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.6"}]

# Jumble up all players' HP: just nausea because I'm not sure how I'd accomplish the actual jumble
effect give @a[team=player] nausea 10

# Playsound
execute at @e[tag=jevil] run playsound theafroofdoom:player.do.act.pirouette.6 player @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 4 1 1
