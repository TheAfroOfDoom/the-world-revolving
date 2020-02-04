# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \rng.mcfunction

# Summon entity with random UUID
summon area_effect_cloud ~ ~ ~ {Tags:["the_world_revolving","rng"]}

# Store the random UUID
execute store result score @s random run data get entity @e[limit=1,tag=rng,type=area_effect_cloud] UUIDMost 0.00000000023283064365386962890625

# Modulus the random score to be within the desired range
execute if score @s random_range matches 1.. run scoreboard players operation @s random %= @s random_range
execute if score @s random_range matches 0 run scoreboard players set @s random 0

# Add the minimum value to the random score
scoreboard players operation @s random += @s random_min

# Reset the rng
kill @e[tag=rng]
