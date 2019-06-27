# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\select\magic\heal_prayer.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add player_is_doing_magic_heal_prayer

# Display text
function theafroofdoom:entity/player/team/player/do/magic/heal_prayer/text/0

# Remove tension points
function theafroofdoom:entity/player/team/player/tension_points/remove/magic/heal_prayer

# Apply healing to self
scoreboard players add @s hearts_needed 8

# Playsounds
playsound theafroofdoom:player.do.magic.heal_prayer player @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 5 1 0.5
playsound theafroofdoom:player.ui.select player @s ~ ~ ~

# Display particles
particle happy_villager ~ ~1.25 ~ 0.5 0.5 0.5 0 20

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable

# Remove tags
tag @s remove player_is_not_doing
