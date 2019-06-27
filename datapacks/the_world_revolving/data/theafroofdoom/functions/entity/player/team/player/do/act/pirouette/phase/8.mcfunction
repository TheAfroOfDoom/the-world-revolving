# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\phase\8.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.8"}]
execute if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.8"}]

# Heal all players 3 hearts
scoreboard players add @a[team=player] hearts_needed 6

# Playsound
execute at @a[team=player] run playsound theafroofdoom:player.do.act.pirouette.8 player @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 4 1 1

# Display particles
execute at @a[team=player] run particle happy_villager ~ ~1.25 ~ 0.5 0.5 0.5 0 10
