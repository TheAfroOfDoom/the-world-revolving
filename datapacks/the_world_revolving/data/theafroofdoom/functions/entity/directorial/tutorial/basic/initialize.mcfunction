# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\initialize.mcfunction

# Initializes the tutorial

# Set scores
scoreboard players set @s tut_delay -1
scoreboard players set @s tut_phase 0
scoreboard players set @s tut_subphase -1

# Initialize players
execute as @a[team=tutorial_basic] at @s run function theafroofdoom:entity/player/team/tutorial/basic/initialize

# Kill any pre-existing Training Dummies
kill @e[tag=training_dummy_basic]

# Summon and initialize Training Dummy
summon armor_stand 59 120 -183 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:23}}],CustomName:'"Basic Training Dummy"',DisabledSlots:4144959,Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1,Tags:["the_world_revolving","groupable","needs_group_id","directorial","tutorial_prop","tutorial_prop_basic","training_dummy","training_dummy_basic","training_dummy_new"]}
execute as @e[tag=training_dummy_new] at @s run function theafroofdoom:entity/directorial/tutorial/prop/basic/training_dummy/initialize

# Remove tag
tag @s remove tutorial_new
