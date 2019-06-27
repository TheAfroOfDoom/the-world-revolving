# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\fast_clockwise\indicator\summon_bullets_helper.mcfunction

# Summon bullet based on variant
summon armor_stand ~ ~0.6 ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:0}}],CustomName:"\"Fast Clockwise Ring Around Bullet\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_bullet","attack_bullet_ring_around","attack_bullet_ring_around_new","attack_bullet_ring_around_inactive","attack_bullet_ring_around_fast_clockwise"],Passengers:[{Duration:2147483627,Effects:[{Amplifier:3,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:1,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:4.0,ReapplicationDelay:1,Tags:["the_world_revolving","hostile","attack","attack_damager","attack_damager_ring_around","attack_damager_ring_around_fast_clockwise"],WaitTime:20},{Duration:2147483627,Effects:[{Amplifier:2,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:5.0,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_grazer","attack_grazer_ring_around","attack_grazer_ring_around_fast_clockwise"]}]}

# Initialize new attack_bullet_ring_around
execute as @e[tag=attack_bullet_ring_around_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_clockwise/bullet/initialize
