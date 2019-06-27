# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\vanish\devilsknife\down.mcfunction

# Vanishes Jevil down at the start of the devilsknife attack

# Summon Devilsknife phantom
summon armor_stand ~ ~-10 ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:5}}],CustomName:"\"Phantom Devilsknife\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,NoGravity:1,Tags:["the_world_revolving","hostile","jevil_phantom_devilsknife","jevil_phantom_devilsknife_attack","jevil_phantom_devilsknife_attack_new"]}

# Vanish Jevil
teleport @s ~ ~-10 ~

# Run base vanish function
execute positioned ~ ~ ~ run function theafroofdoom:entity/hostile/jevil/attack/vanish/base

# Play voiceline
playsound theafroofdoom:jevil.voiceline.metamorphosis hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
playsound theafroofdoom:jevil.voiceline.metamorphosis hostile @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 1

# Set phantom devilsknife's model score
scoreboard players operation @e[tag=jevil_phantom_devilsknife_attack_new] attack_model = @s attack_model

# Set phantom devilsknife's model
execute as @e[tag=jevil_phantom_devilsknife_attack_new] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s attack_model

# Initialize for loop
scoreboard players set @e[tag=jevil_phantom_devilsknife_attack_new] attack_clock -1
tag @e[tag=jevil_phantom_devilsknife_attack_new] remove jevil_phantom_devilsknife_attack_new
