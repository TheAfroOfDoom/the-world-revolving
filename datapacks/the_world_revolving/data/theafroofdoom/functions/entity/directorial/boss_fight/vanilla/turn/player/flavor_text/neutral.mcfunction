# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\flavor_text\neutral.mcfunction

# Generate a random value
scoreboard players set @s random_min 0
scoreboard players set @s random_range 5
function theafroofdoom:rng

# Display text based on randomized value
execute if score @s random matches 0 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/neutral/0
execute if score @s random matches 1 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/neutral/1
execute if score @s random matches 2 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/neutral/2
execute if score @s random matches 3 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/neutral/3
execute if score @s random matches 4 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/neutral/4
