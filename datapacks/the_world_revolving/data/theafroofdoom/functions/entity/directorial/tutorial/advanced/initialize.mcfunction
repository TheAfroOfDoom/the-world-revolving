# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\initialize.mcfunction

# Initializes the tutorial

# Set scores
scoreboard players set @s tut_delay -1
scoreboard players set @s tut_phase 0
scoreboard players set @s tut_subphase -1

# Initialize players
execute as @a[team=tutorial_adv] at @s run function theafroofdoom:entity/player/team/tutorial/advanced/initialize

# Kill any pre-existing Training Dummies
kill @e[tag=training_dummy_advanced]

# Summon and initialize Training Dummy
summon armor_stand 59 120 -137 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:23}}],CustomName:'"Advanced Training Dummy"',DisabledSlots:4144959,Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1,Rotation:[180.0f,0.0f],Tags:["the_world_revolving","groupable","needs_group_id","directorial","tutorial_prop","tutorial_prop_advanced","training_dummy","training_dummy_advanced","training_dummy_new"]}
execute as @e[tag=training_dummy_new] at @s run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/initialize

# Remove tag
tag @s remove tutorial_new
