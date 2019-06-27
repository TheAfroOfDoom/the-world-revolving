# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\phase\3.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.3"}]
execute if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.3"}]

# Give all players Resistance I
effect give @a[tag=player_room_boss_fight_vanilla] resistance 1000000 0 true

# Playsound
execute at @e[tag=jevil] run playsound theafroofdoom:player.do.act.pirouette.3 player @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 4 1 1
