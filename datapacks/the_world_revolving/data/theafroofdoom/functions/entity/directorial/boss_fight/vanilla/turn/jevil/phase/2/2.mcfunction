# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\phase\2\2.mcfunction

# Speak
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/speak/phase/2/2

# Set attack_delay
scoreboard players set @s attack_delay 30

# Set attack to initialize after attack_delay ticks
tag @s add jevil_wants_to_sentry_circle
