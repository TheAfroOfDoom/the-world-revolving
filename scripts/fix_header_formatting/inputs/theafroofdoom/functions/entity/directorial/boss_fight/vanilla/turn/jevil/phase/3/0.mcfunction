# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\phase\3\0.mcfunction

# Speak
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/3/0

# Set attack_delay
scoreboard players set @s attack_delay 30

# Set attack to initialize after attack_delay ticks
tag @s add jevil_wants_to_shoot_diamond
