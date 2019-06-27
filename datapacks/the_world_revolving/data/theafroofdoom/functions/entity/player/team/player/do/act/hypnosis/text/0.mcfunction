# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\hypnosis\text\0.mcfunction

# Get random value between 0 and 2
# Update bounds
scoreboard players set @s random_min 0
scoreboard players set @s random_range 3

# Use RNG to get a random radius from the range [random_min, random_min + random_range)
function theafroofdoom:rng

# Display text based on global settings and RNG-value
execute if score @s random matches 0 if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.hypnosis.0.0", "with": [{"selector": "@s"}]}]
execute if score @s random matches 0 if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.hypnosis.0.0", "with": [{"selector": "@s"}]}]

execute if score @s random matches 1 if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.hypnosis.0.1", "with": [{"selector": "@s"}]}]
execute if score @s random matches 1 if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.hypnosis.0.1", "with": [{"selector": "@s"}]}]

execute if score @s random matches 2 if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.hypnosis.0.2", "with": [{"selector": "@s"}]}]
execute if score @s random matches 2 if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.hypnosis.0.2", "with": [{"selector": "@s"}]}]
