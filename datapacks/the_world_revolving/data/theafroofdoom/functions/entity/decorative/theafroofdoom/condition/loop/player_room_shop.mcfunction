# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\decorative\theafroofdoom\condition\loop\player_room_shop.mcfunction

# Only does this while there is at least 1 player in the shop

# Summon particles randomly (1 every 2 seconds)
scoreboard players set @s random_min 0
scoreboard players set @s random_range 40
function theafroofdoom:rng

# Display particle 2.5% of ticks while a player is in the shop
execute if score @s random matches 0 run particle crit ~ ~1.25 ~ 0.25 0.25 0.25 0 1
