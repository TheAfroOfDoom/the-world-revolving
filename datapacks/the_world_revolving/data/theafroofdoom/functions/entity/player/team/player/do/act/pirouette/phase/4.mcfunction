# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\phase\4.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.4"}]
execute if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.4"}]

# Playsound
execute at @e[tag=jevil] run playsound theafroofdoom:player.do.act.pirouette.4 player @a[tag=player_room_boss_fight_vanilla] ~ ~5 ~ 4 1 1

# Summon a randomized parrot that flies across arena
function theafroofdoom:entity/player/team/player/do/act/pirouette/phase/4/summon_pirouette_parrot
