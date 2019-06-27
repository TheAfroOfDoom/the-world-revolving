# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\spade\indicator\summon_bullets_helper.mcfunction

# Summon bullet based on variant
summon armor_stand ~ ~0.6 ~ {CustomName:"\"Small Spade Bullet\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_bullet","attack_bullet_shoot","attack_bullet_shoot_new","attack_bullet_shoot_inactive","attack_bullet_shoot_spade"],Passengers:[{Duration:2147483627,Effects:[{Amplifier:2,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:1,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:1.25,ReapplicationDelay:1,Tags:["the_world_revolving","hostile","attack","attack_damager","attack_damager_shoot","attack_damager_shoot_spade"],WaitTime:20},{Duration:2147483627,Effects:[{Amplifier:1,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:2.25,Tags:["the_world_revolving","hostile","attack","attack_grazer","attack_grazer_shoot","attack_grazer_shoot_spade"]}]}

# Set attack_variant score
scoreboard players set @e[tag=attack_bullet_shoot_new] attack_variant -2
