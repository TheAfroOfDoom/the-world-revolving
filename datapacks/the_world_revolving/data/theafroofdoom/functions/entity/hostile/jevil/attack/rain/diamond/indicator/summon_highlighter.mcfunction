# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\diamond\indicator\summon_highlighter.mcfunction

# Summon bullet based on variant
summon armor_stand ~ ~-1 ~ {CustomName:"\"Diamond Rain Highlighter\"",DisabledSlots:4144959,Marker:1,Invisible:1,Invulnerable:1,NoGravity:1,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_highlighter","attack_highlighter_rain","attack_highlighter_rain_new","attack_highlighter_rain_diamond"]}

# Set attack_variant score
scoreboard players set @e[tag=attack_highlighter_rain_new] attack_variant -2
