# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\smiling\indicator\summon_red.mcfunction

# Summon red bullet
summon giant ^-34 ^0.6 ^-18 {ActiveEffects:[{Amplifier:4b,Duration:214748360,Id:11b,ShowParticles:0b},{Amplifier:0b,Duration:214748360,Id:14b,ShowParticles:0b}],DeathTime:19s,HandItems:[{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:6}},{}],PersistenceRequired:1,Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_bullet","attack_bullet_red_devilsknife","attack_bullet_red_devilsknife_new","attack_bullet_red_devilsknife_smiling"]}
summon area_effect_cloud ^-34 ^1.0 ^-18 {Duration:80,Effects:[{Amplifier:1,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],Particle:"block air",Radius:10,ReapplicationDelay:1,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_damager","attack_damager_red_devilsknife","attack_damager_red_devilsknife_smiling"],Passengers:[{Duration:2147483627,Effects:[{Amplifier:2,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:11.0,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_grazer","attack_grazer_red_devilsknife","attack_grazer_red_devilsknife_smiling"]}]}
execute as @e[tag=needs_bullet_id] run function theafroofdoom:entity/hostile/bullet_id/set
scoreboard players add #bullet_id_next bullet_id 1

# Playsound of red bullet summon
playsound theafroofdoom:jevil.attack.devilsknife.red.summon hostile @a[tag=player_room_boss_fight_vanilla] ^-34 ^ ^-18 5.0 1.0 1.0

# Update red bullet's rotation
execute store result score @s afro.math_4 run data get entity @s Rotation[0] 1.0
scoreboard players remove @s afro.math_4 90
execute store result entity @e[tag=attack_bullet_red_devilsknife_new,limit=1] Rotation[0] float 1.0 run scoreboard players get @s afro.math_4

# Set model score
scoreboard players operation @e[tag=attack_bullet_red_devilsknife_new] attack_model = #attack_devilsknife_smiling attack_model_1

# Set attack_variant score
scoreboard players set @e[tag=attack_bullet_red_devilsknife_new] attack_variant -1
