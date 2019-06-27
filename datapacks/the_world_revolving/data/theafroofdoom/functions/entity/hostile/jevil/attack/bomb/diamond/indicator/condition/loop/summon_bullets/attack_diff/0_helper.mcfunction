# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\diamond\indicator\condition\loop\summon_bullets\attack_diff\0_helper.mcfunction

# Summon bullet based on variant
summon armor_stand ~ ~2 ~ {CustomName:"\"Bomb Diamond Bullet\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_bullet","attack_bullet_bomb","attack_bullet_bomb_new","attack_bullet_bomb_inactive","attack_bullet_bomb_diamond"],Passengers:[{Duration:2147483627,Effects:[{Amplifier:3,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:1,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:1.5,ReapplicationDelay:1,Tags:["the_world_revolving","hostile","attack","attack_damager","attack_damager_bomb","attack_damager_bomb_diamond"]},{Duration:2147483627,Effects:[{Amplifier:1,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:2.5,Tags:["the_world_revolving","hostile","attack","attack_grazer","attack_grazer_bomb","attack_grazer_bomb_diamond"]}]}

# Set attack_diff score
scoreboard players set @e[tag=attack_bullet_bomb_new] attack_diff 0

# Set attack_variant score
scoreboard players set @e[tag=attack_bullet_bomb_new] attack_variant -3
