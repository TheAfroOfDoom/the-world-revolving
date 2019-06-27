# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\summon_bullet_large.mcfunction

# Summon bullet based on variant
summon armor_stand 0 140.5 0 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:8}}],CustomName:"\"Final Chaos Large Scythe\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,NoGravity:1,Silent:1,Tags:["the_world_revolving","hostile","attack","attack_bullet_large","attack_bullet_large_cutscene","attack_bullet_large_cutscene_new","attack_bullet_large_cutscene_final_chaos"]}

# Set attack_variant score
scoreboard players set @e[tag=attack_bullet_large_cutscene_new] attack_variant -1

# Remove new tag
tag @e[tag=attack_bullet_large_cutscene_new] remove attack_bullet_large_cutscene_new
