# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\heart\indicator\condition\loop\summon_bullets\attack_diff\2_helper.mcfunction

# Summon bullet based on variant
summon armor_stand ~ ~2 ~ {CustomName:"\"Bomb Heart Bullet\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Rotation:[0.0f,0.0f],Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_bullet","attack_bullet_bomb","attack_bullet_bomb_new","attack_bullet_bomb_inactive","attack_bullet_bomb_heart"],Passengers:[{Duration:2147483627,Effects:[{Amplifier:3,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:1,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:1.7,ReapplicationDelay:1,Tags:["the_world_revolving","groupable_bullet","needs_bullet_id","hostile","attack","attack_damager","attack_damager_bomb","attack_damager_bomb_new","attack_damager_bomb_heart"]},{Duration:2147483627,Effects:[{Amplifier:1,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:2.7,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_grazer","attack_grazer_bomb","attack_grazer_bomb_heart"]}]}

# Set attack_diff score
scoreboard players set @e[tag=attack_bullet_bomb_new] attack_diff 2

# Set attack_variant score
scoreboard players set @e[tag=attack_bullet_bomb_new] attack_variant -2
