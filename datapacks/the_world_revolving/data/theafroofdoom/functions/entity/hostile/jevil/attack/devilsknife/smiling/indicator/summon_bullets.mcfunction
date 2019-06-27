# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\smiling\indicator\summon_bullets.mcfunction

# The armor_stands (attack_bullets) rotate continuously in one direction:
# - All initial yaws are 0.0
# - The initial top 2 rotate clockwise
# - The initial bottom 2 rotate counter-clockwise
# ===
# The AECs (attack_damagers) dictate the movement:
# - They rotate continuously, but the speed at which they teleport follows a sinusoidal path

# Summon bullets
summon armor_stand ^ ^0.6 ^34 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:7}}],CustomName:"\"Devilsknife Smiling\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_bullet","attack_bullet_devilsknife","attack_bullet_devilsknife_clockwise","attack_bullet_devilsknife_new","attack_bullet_devilsknife_inactive","attack_bullet_devilsknife_smiling"],Passengers:[{Duration:2147483627,Effects:[{Amplifier:1,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:4.0,ReapplicationDelay:1,Rotation:[180.0f,0.0f],Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_damager","attack_damager_devilsknife","attack_damager_devilsknife_smiling"],WaitTime:20},{Duration:2147483627,Effects:[{Amplifier:2,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:6.0,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_grazer","attack_grazer_devilsknife","attack_grazer_devilsknife_smiling"]}]}
execute as @e[tag=needs_bullet_id] run function theafroofdoom:entity/hostile/bullet_id/set
scoreboard players add #bullet_id_next bullet_id 1
particle minecraft:large_smoke ^ ^1.0 ^34 0 0 0 0.5 2 force

summon armor_stand ^34 ^0.6 ^ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:7}}],CustomName:"\"Devilsknife Smiling\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_bullet","attack_bullet_devilsknife","attack_bullet_devilsknife_clockwise","attack_bullet_devilsknife_new","attack_bullet_devilsknife_inactive","attack_bullet_devilsknife_smiling"],Passengers:[{Duration:2147483627,Effects:[{Amplifier:1,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:4.0,ReapplicationDelay:1,Rotation:[90.0f,0.0f],Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_damager","attack_damager_devilsknife","attack_damager_devilsknife_smiling"],WaitTime:20},{Duration:2147483627,Effects:[{Amplifier:2,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:6.0,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_grazer","attack_grazer_devilsknife","attack_grazer_devilsknife_smiling"]}]}
execute as @e[tag=needs_bullet_id] run function theafroofdoom:entity/hostile/bullet_id/set
scoreboard players add #bullet_id_next bullet_id 1
particle minecraft:large_smoke ^34 ^1.0 ^ 0 0 0 0.5 2 force

summon armor_stand ^ ^0.6 ^-34 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:7}}],CustomName:"\"Devilsknife Smiling\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Rotation:[90.0f,0.0f],Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_bullet","attack_bullet_devilsknife","attack_bullet_devilsknife_counter_clockwise","attack_bullet_devilsknife_new","attack_bullet_devilsknife_inactive","attack_bullet_devilsknife_smiling"],Passengers:[{Duration:2147483627,Effects:[{Amplifier:1,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:4.0,ReapplicationDelay:1,Rotation:[0.0f,0.0f],Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_damager","attack_damager_devilsknife","attack_damager_devilsknife_smiling"],WaitTime:20},{Duration:2147483627,Effects:[{Amplifier:2,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:6.0,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_grazer","attack_grazer_devilsknife","attack_grazer_devilsknife_smiling"]}]}
execute as @e[tag=needs_bullet_id] run function theafroofdoom:entity/hostile/bullet_id/set
scoreboard players add #bullet_id_next bullet_id 1
particle minecraft:large_smoke ^ ^1.0 ^-34 0 0 0 0.5 2 force

summon armor_stand ^-34 ^0.6 ^ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:7}}],CustomName:"\"Devilsknife Smiling\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Rotation:[90.0f,0.0f],Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_bullet","attack_bullet_devilsknife","attack_bullet_devilsknife_counter_clockwise","attack_bullet_devilsknife_new","attack_bullet_devilsknife_inactive","attack_bullet_devilsknife_smiling"],Passengers:[{Duration:2147483627,Effects:[{Amplifier:1,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:4.0,ReapplicationDelay:1,Rotation:[270.0f,0.0f],Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_damager","attack_damager_devilsknife","attack_damager_devilsknife_smiling"],WaitTime:20},{Duration:2147483627,Effects:[{Amplifier:2,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:6.0,Tags:["the_world_revolving","groupable","needs_group_id","groupable_bullet","needs_bullet_id","hostile","attack","attack_grazer","attack_grazer_devilsknife","attack_grazer_devilsknife_smiling"]}]}
execute as @e[tag=needs_bullet_id] run function theafroofdoom:entity/hostile/bullet_id/set
scoreboard players add #bullet_id_next bullet_id 1
particle minecraft:large_smoke ^-34 ^1.0 ^ 0 0 0 0.5 2 force

# Set model score
scoreboard players operation @e[tag=attack_bullet_devilsknife_new] attack_model = #attack_devilsknife_smiling attack_model

# Set attack_variant score
scoreboard players set @e[tag=attack_bullet_devilsknife_new] attack_variant -1
