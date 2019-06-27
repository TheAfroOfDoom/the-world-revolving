# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\boss_fight\vanilla\initialize.mcfunction

# Initializes Jevil for the vanilla boss fight

# Set scores
scoreboard players set @s attack_delay -1
scoreboard players set @s jevil_clock -1
scoreboard players set @s jevil_damage -1
scoreboard players set @s jevil_dance -1
scoreboard players set @s jevil_model 6

# Set next Group ID
function theafroofdoom:entity/group_id/set_next

# Origin
execute store result score @s origin_x run data get entity @s Pos[0] 100
execute store result score @s origin_y run data get entity @s Pos[1] 100
execute store result score @s origin_z run data get entity @s Pos[2] 100

# Set initial model
data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_shovel",tag:{CustomModelData:6}}]}

# Summon and initialize hitbox
summon wither_skeleton ~ ~ ~ {ActiveEffects:[{Amplifier:3b,Duration:2147483647,Id:11b,ShowParticles:0b}],Attributes:[{Name:"generic.knockbackResistance",Base:1.0f},{Name:"generic.maxHealth",Base:1024.0f}],CanPickUpLoot:0,CustomName:"\"Jevil Hitbox\"",DeathLootTable:"empty",DeathTime:19s,Health:1024.0f,NoAI:1,NoGravity:1,PersistenceRequired:1,Silent:1,Team:jevil,Tags:["the_world_revolving","hostile","groupable","needs_group_id","jevil_hitbox","jevil_hitbox_new"]}
execute as @e[tag=jevil_hitbox_new] at @s run function theafroofdoom:entity/hostile/jevil/hitbox/initialize

# Summon attack_originator
summon area_effect_cloud ~ ~-1 ~ {CustomName:"\"Attack Originator\"",Duration:2147483647,Tags:["the_world_revolving","hostile","groupable","needs_group_id","jevil_attack_originator"]}

# Copy group ID to hitbox and attack_originator
function theafroofdoom:entity/group_id/copy

# Remove tags
tag @s remove jevil_new
