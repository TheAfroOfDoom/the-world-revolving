# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\hitbox\loop.mcfunction

# Reset resistance status effect time duration
data modify entity @s ActiveEffects[{Id:11b}].Duration set value 2147483647

# Set health to max if boss fight exists
execute if entity @e[tag=boss_fight] run data modify entity @s Health set value 1024
