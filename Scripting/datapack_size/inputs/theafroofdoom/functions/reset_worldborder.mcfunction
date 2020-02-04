# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \reset_worldborder.mcfunction

# NOTE(jordan): This will only go up to ~34.7 days (of the game constantly running).

# Resets the world border

# Set center
worldborder center 0 0

# Set worldborder.radius_initial
worldborder set 1000

# Math: (radius_final - radius_initial) / 20
# Set worldborder speed = 20 blocks/s = 1 block/tick
worldborder set 60000000 2999950

# Store initial radius
execute store result score @s afro.math_0 run worldborder get
