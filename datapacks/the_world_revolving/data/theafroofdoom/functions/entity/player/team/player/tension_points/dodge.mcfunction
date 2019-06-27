# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\tension_points\dodge.mcfunction

# Dodge hitboxes consist of this format:
# {Duration:2147483627,Effects:[{Amplifier:TENSION_POINTS,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:DAMAGER_RADIUS+1.0,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_grazer","attack_grazer_carousel","attack_grazer_carousel_horse"]}

# Store amplifier of luck to represent tension points to add in afro.math_0
execute store result score @s afro.math_0 run data get entity @s ActiveEffects[{Id:26b}].Amplifier 1

# Add amplifier to player_tpoints
scoreboard players operation @s player_tpoints += @s afro.math_0

# Playsound for grazing an attack if tension_points are not full
execute unless score @s player_tpoints matches 100.. run playsound theafroofdoom:player.graze player @s

# Display particles
particle bubble ~-1 ~1 ~
particle bubble ~-0.70710678118 ~1 ~-0.70710678118
particle bubble ~ ~1 ~-1
particle bubble ~0.70710678118 ~1 ~-0.70710678118
particle bubble ~1 ~1 ~
particle bubble ~-0.70710678118 ~1 ~0.70710678118
particle bubble ~ ~1 ~1
particle bubble ~0.70710678118 ~1 ~0.70710678118
