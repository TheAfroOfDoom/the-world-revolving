# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\speak\phase\4\0.mcfunction

# Randomize text to display with attack
scoreboard players set @s random_min 0
scoreboard players set @s random_range 6
function theafroofdoom:rng

# Display text based on randomized value
execute if score @s random matches 0 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/4/0/0
execute if score @s random matches 1 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/4/0/1
execute if score @s random matches 2 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/4/0/2
execute if score @s random matches 3 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/4/0/3
execute if score @s random matches 4 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/4/0/4
execute if score @s random matches 5 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/4/0/5
