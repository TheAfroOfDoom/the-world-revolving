# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\phase\1\4.mcfunction

# Speak
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/4/0

# Set attack_delay
scoreboard players set @s attack_delay 30

# Initialize random attack from this phase after attack_delay ticks
tag @s add jevil_wants_to_random_phase_1
