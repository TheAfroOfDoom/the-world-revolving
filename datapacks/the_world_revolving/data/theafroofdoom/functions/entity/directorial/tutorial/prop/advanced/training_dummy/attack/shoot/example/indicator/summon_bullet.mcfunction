# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\attack\shoot\example\indicator\summon_bullet.mcfunction

# Summon bullet based on variant
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:20}}],CustomName:'"Tutorial Advanced Pellet"',DisabledSlots:4144959,Invisible:1,Invulnerable:1,NoGravity:1,Silent:1,Tags:["the_world_revolving","groupable_bullet","needs_bullet_id","directorial","tutorial_prop","tutorial_prop_advanced","prop_attack","prop_attack_bullet","prop_attack_bullet_shoot","prop_attack_bullet_shoot_new","prop_attack_bullet_shoot_example"],Passengers:[{CustomName:'"Tutorial Advanced Pellet Damager"',Duration:2147483627,Effects:[{Amplifier:0,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:0.9,ReapplicationDelay:1,Tags:["the_world_revolving","groupable_bullet","needs_bullet_id","directorial","tutorial_prop","tutorial_prop_advanced","prop_attack","prop_attack_damager","prop_attack_damager_shoot","prop_attack_damager_shoot_example"]},{Duration:2147483627,Effects:[{Amplifier:5,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:1.5,Tags:["the_world_revolving","groupable_bullet","needs_bullet_id","directorial","tutorial_prop","tutorial_prop_advanced","prop_attack","prop_attack_grazer","prop_attack_grazer_shoot","prop_attack_grazer_shoot_example"]}]}

# Set attack_variant score
scoreboard players set @e[tag=prop_attack_bullet_shoot_new] attack_variant -1

# Initialize bullet
execute as @e[tag=prop_attack_bullet_shoot_new] at @s run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/bullet/initialize
