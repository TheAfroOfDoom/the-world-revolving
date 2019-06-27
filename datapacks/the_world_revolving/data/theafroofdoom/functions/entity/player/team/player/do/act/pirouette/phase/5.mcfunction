# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\phase\5.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.5"}]
execute if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.5"}]

# Select a random player
tag @r[team=player] add player_do_act_pirouette_5

# Heal a random player 2.5 hearts
scoreboard players add @a[tag=player_do_act_pirouette_5,team=player] hearts_needed 5

# Playsound
execute at @a[tag=player_do_act_pirouette_5,team=player] run playsound theafroofdoom:player.do.act.pirouette.5 player @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 4 1 1

# Display particles
execute at @a[tag=player_do_act_pirouette_5,team=player] run particle happy_villager ~ ~1.25 ~ 0.5 0.5 0.5 0 20

# Remove tag from player
tag @a[tag=player_room_boss_fight_vanilla] remove player_do_act_pirouette_5
