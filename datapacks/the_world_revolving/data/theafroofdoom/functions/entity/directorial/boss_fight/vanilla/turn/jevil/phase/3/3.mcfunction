# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\phase\3\3.mcfunction

# Speak
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/3/3

# Set attack_delay
scoreboard players set @s attack_delay 50

# Set attack to initialize after attack_delay ticks
tag @s add jevil_wants_to_cutscene_final_chaos

# Update model
scoreboard players set @s jevil_model 10
scoreboard players add @s jevil_dance 2
function theafroofdoom:entity/hostile/jevil/update_model

# Add jumping Jevil particles around, add two colours together to get as close to neutral as possible
effect give @e[tag=jevil_hitbox,limit=1] dolphins_grace 1000000 0 false
effect give @e[tag=jevil_hitbox,limit=1] slow_falling 1000000 0 false
