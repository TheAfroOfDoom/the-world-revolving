# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\phase\1.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.1", "with": [{"selector": "@e[tag=jevil]"}]}]
execute if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.1", "with": [{"selector": "@e[tag=jevil]"}]}]

# Permanently increase all player's damage (close enough to decreasing Jevil's defense, max strength is V)
execute if data entity @s ActiveEffects:[{Amplifier:3b,Id:5b}] run effect give @a[team=player] strength 1000000 4 true
execute if data entity @s ActiveEffects:[{Amplifier:2b,Id:5b}] run effect give @a[team=player] strength 1000000 3 true
execute if data entity @s ActiveEffects:[{Amplifier:1b,Id:5b}] run effect give @a[team=player] strength 1000000 2 true
execute if data entity @s ActiveEffects:[{Amplifier:0b,Id:5b}] run effect give @a[team=player] strength 1000000 1 true
execute unless data entity @s ActiveEffects:[{Id:5b}] run effect give @a[team=player] strength 1000000 0 true

# Playsound
execute at @e[tag=jevil] run playsound theafroofdoom:player.do.act.pirouette.1 player @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 4 1 1
