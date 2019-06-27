# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\circle\indicator\summon_phantom.mcfunction

# Summon Jevil phantom when attack_variant = -1
summon armor_stand ~ ~1.5 ~ {CustomName:"\"Sentry Phantom Circle\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","jevil_phantom","jevil_phantom_attack_sentry","jevil_phantom_attack_sentry_new","jevil_phantom_attack_sentry_circle"]}
execute store result score @e[limit=1,tag=jevil_phantom_attack_sentry_new] attack_model run scoreboard players get @s attack_model

# Initialize Jevil phantom
execute as @e[tag=jevil_phantom_attack_sentry_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/phantom/initialize
