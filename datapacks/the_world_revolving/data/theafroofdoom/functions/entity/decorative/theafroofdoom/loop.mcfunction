# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\decorative\theafroofdoom\loop.mcfunction

# Behavior if at least one player is in the shop
execute if entity @a[tag=player_room_shop] run function theafroofdoom:entity/decorative/theafroofdoom/condition/loop/player_room_shop
