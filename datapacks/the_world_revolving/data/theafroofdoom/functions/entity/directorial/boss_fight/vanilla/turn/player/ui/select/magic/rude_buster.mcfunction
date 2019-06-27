# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\select\magic\rude_buster.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add groupable
tag @s add player_is_doing_magic_rude_buster

# Display text
function theafroofdoom:entity/player/team/player/do/magic/rude_buster/text/0

# Apply slowness (so player can't move and for FOV change)
effect give @s slowness 1000000 9 true

# Summon and initialize rude buster wave
execute anchored eyes rotated ~ 0 run summon armor_stand ^ ^5 ^0.5 {CustomName:'"Rude Buster Wave"',DisabledSlots:4144959,Invisible:1,Invulnerable:1,Tags:["the_world_revolving","groupable","needs_group_id","miscellaneous","rude_buster_wave","rude_buster_wave_new"]}
execute as @e[tag=miscellaneous,tag=rude_buster_wave_new] at @s run function theafroofdoom:entity/miscellaneous/rude_buster_wave/initialize
function theafroofdoom:entity/group_id/set_next

# Remove tension points
function theafroofdoom:entity/player/team/player/tension_points/remove/magic/rude_buster

# Playsounds
playsound theafroofdoom:player.ui.select player @s ~ ~ ~ 15 1 1

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable

# Remove tags
tag @s remove player_is_not_doing
