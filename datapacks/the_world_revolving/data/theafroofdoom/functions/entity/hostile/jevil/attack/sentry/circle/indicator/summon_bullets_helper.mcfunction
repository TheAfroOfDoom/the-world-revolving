# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\circle\indicator\summon_bullets_helper.mcfunction

# Summon bullet based on variant
summon armor_stand ~ ~1 ~ {CustomName:"\"Sentry Circle Bullet\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_bullet","attack_bullet_sentry","attack_bullet_sentry_new","attack_bullet_sentry_inactive","attack_bullet_sentry_circle"],Passengers:[{Duration:2147483627,Effects:[{Amplifier:3,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:1,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:1.0,ReapplicationDelay:1,Tags:["the_world_revolving","hostile","attack","attack_damager","attack_damager_sentry","attack_damager_sentry_circle"]},{Duration:2147483627,Effects:[{Amplifier:2,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:2.0,Tags:["the_world_revolving","hostile","attack","attack_grazer","attack_grazer_sentry","attack_grazer_sentry_circle"]}]}

# Set attack_variant score
scoreboard players set @e[tag=attack_bullet_sentry_new] attack_variant -1
