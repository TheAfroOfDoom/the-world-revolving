# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\phase\1\0.mcfunction

# Speak
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/1/0

# Set attack_delay
scoreboard players set @s attack_delay 30

# Set attack to initialize after attack_delay ticks
tag @s add jevil_wants_to_carousel_horse

# Update model
scoreboard players set @s jevil_model 10
scoreboard players set @s jevil_dance 0
function theafroofdoom:entity/hostile/jevil/update_model
