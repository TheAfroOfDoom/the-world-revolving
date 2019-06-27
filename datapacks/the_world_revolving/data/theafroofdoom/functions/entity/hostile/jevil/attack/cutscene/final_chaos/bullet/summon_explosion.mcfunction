# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\bullet\summon_explosion.mcfunction

# Summon explosion when a scythe lands
summon armor_stand ~ ~1.5 ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:7}}],CustomName:"\"Final Chaos Explosion\"",DisabledSlots:4144959,NoGravity:1,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable_bullet","needs_bullet_id","hostile","attack","attack_explosion","attack_explosion_cutscene","attack_explosion_cutscene_new","attack_explosion_cutscene_final_chaos"],Passengers:[{CustomName:'"Final Chaos Explosion Damager"',Duration:2147483627,Effects:[{Amplifier:1,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:1,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:1.5,ReapplicationDelay:1,Tags:["the_world_revolving","groupable_bullet","needs_bullet_id","hostile","attack","attack_damager","attack_damager_cutscene","attack_damager_cutscene_final_chaos"]},{CustomName:'"Final Chaos Explosion Grazer"',Duration:2147483627,Effects:[{Amplifier:4,Duration:2,Id:26,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:2.5,Tags:["the_world_revolving","groupable_bullet","needs_bullet_id","hostile","attack","attack_grazer","attack_grazer_cutscene","attack_grazer_cutscene_final_chaos"]}]}

# Summon higher explosion so players can almost always see the column whether looking straight ahead or up
summon armor_stand ~ ~21.5 ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:14}}],CustomName:"\"Final Chaos Explosion Flipped\"",DisabledSlots:4144959,NoGravity:1,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable_bullet","needs_bullet_id","hostile","attack","attack_explosion","attack_explosion_cutscene","attack_explosion_cutscene_new","attack_explosion_cutscene_final_chaos"]}

# Set attack_variant score
scoreboard players set @e[tag=attack_explosion_cutscene_new] attack_variant -1

# Initialize explosion
execute as @e[tag=attack_explosion_cutscene_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/explosion/initialize
