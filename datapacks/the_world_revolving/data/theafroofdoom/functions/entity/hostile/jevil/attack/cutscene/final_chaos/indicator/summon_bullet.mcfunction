# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\indicator\summon_bullet.mcfunction

# Summon bullet based on variant
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:21}}],CustomName:"\"Final Chaos Scythe\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_bullet","attack_bullet_cutscene","attack_bullet_cutscene_new","attack_bullet_cutscene_final_chaos"],Passengers:[{CustomName:"\"Final Chaos Bullet Damager\"",Duration:2147483627,Effects:[{Amplifier:1,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:1,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:1.5,ReapplicationDelay:1,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_damager","attack_damager_cutscene","attack_damager_cutscene_final_chaos"]},{CustomName:"\"Final Chaos Bullet Grazer\"",Duration:2147483627,Effects:[{Amplifier:4,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:2.5,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_grazer","attack_grazer_cutscene","attack_grazer_cutscene_final_chaos"]}]}

# Set attack_variant score
scoreboard players set @e[tag=attack_bullet_cutscene_new] attack_variant -1

# Initialize bullet
execute as @e[tag=attack_bullet_cutscene_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/bullet/initialize
