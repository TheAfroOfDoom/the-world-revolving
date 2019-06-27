# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\basic\training_dummy\initialize.mcfunction

# Set next Group ID
function theafroofdoom:entity/group_id/set_next

# Summon and initialize hitbox
summon villager ~ ~ ~ {ActiveEffects:[{Amplifier:0b,Duration:2147483647,Id:14b,ShowParticles:0b}],Attributes:[{Name:"generic.knockbackResistance",Base:1.0f},{Name:"generic.maxHealth",Base:1024.0f}],CustomName:'"Basic Training Dummy Hitbox"',DeathLootTable:"empty",DeathTime:19s,Health:1024.0f,NoAI:1,NoGravity:1,PersistenceRequired:1,Silent:1,Team:immovable,VillagerData:{level:0,profession:"minecraft:nitwit",type:"minecraft:plains"},Tags:["the_world_revolving","groupable","needs_group_id","directorial","tutorial_prop","tutorial_prop_basic","training_dummy_hitbox","training_dummy_hitbox_new","training_dummy_hitbox_basic"]}
execute as @e[tag=training_dummy_hitbox_new] at @s run function theafroofdoom:entity/directorial/tutorial/prop/basic/training_dummy/hitbox/initialize

# Copy group ID to hitbox
function theafroofdoom:entity/group_id/copy

# Remove tags
tag @s remove training_dummy_new
