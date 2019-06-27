# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\indicator\summoner\condition\loop\attack_diff\0.mcfunction

# Does velocity based on sinusoidal attack_rad_min score

# Increment and wrap attack_rad_min
scoreboard players add @s attack_rad_min 1
scoreboard players operation @s attack_rad_min %= #40 constant

# Check spreadsheet for scratchwork done for these calculations
execute if score @s attack_rad_min matches 0 run teleport @s ~ ~ ~1.4
execute if score @s attack_rad_min matches 1 run teleport @s ~ ~ ~1.382763677
execute if score @s attack_rad_min matches 2 run teleport @s ~ ~ ~1.331479123
execute if score @s attack_rad_min matches 3 run teleport @s ~ ~ ~1.247409134
execute if score @s attack_rad_min matches 4 run teleport @s ~ ~ ~1.132623792
execute if score @s attack_rad_min matches 5 run teleport @s ~ ~ ~0.989949494
execute if score @s attack_rad_min matches 6 run teleport @s ~ ~ ~0.822899353
execute if score @s attack_rad_min matches 7 run teleport @s ~ ~ ~0.6355867
execute if score @s attack_rad_min matches 8 run teleport @s ~ ~ ~0.432623792
execute if score @s attack_rad_min matches 9 run teleport @s ~ ~ ~0.219008251
execute if score @s attack_rad_min matches 10 run teleport @s ~ ~ ~0.0
execute if score @s attack_rad_min matches 11 run teleport @s ~ ~ ~-0.219008251
execute if score @s attack_rad_min matches 12 run teleport @s ~ ~ ~-0.432623792
execute if score @s attack_rad_min matches 13 run teleport @s ~ ~ ~-0.6355867
execute if score @s attack_rad_min matches 14 run teleport @s ~ ~ ~-0.822899353
execute if score @s attack_rad_min matches 15 run teleport @s ~ ~ ~-0.989949494
execute if score @s attack_rad_min matches 16 run teleport @s ~ ~ ~-1.132623792
execute if score @s attack_rad_min matches 17 run teleport @s ~ ~ ~-1.247409134
execute if score @s attack_rad_min matches 18 run teleport @s ~ ~ ~-1.331479123
execute if score @s attack_rad_min matches 19 run teleport @s ~ ~ ~-1.382763677
execute if score @s attack_rad_min matches 20 run teleport @s ~ ~ ~-1.4
execute if score @s attack_rad_min matches 21 run teleport @s ~ ~ ~-1.382763677
execute if score @s attack_rad_min matches 22 run teleport @s ~ ~ ~-1.331479123
execute if score @s attack_rad_min matches 23 run teleport @s ~ ~ ~-1.247409134
execute if score @s attack_rad_min matches 24 run teleport @s ~ ~ ~-1.132623792
execute if score @s attack_rad_min matches 25 run teleport @s ~ ~ ~-0.989949494
execute if score @s attack_rad_min matches 26 run teleport @s ~ ~ ~-0.822899353
execute if score @s attack_rad_min matches 27 run teleport @s ~ ~ ~-0.6355867
execute if score @s attack_rad_min matches 28 run teleport @s ~ ~ ~-0.432623792
execute if score @s attack_rad_min matches 29 run teleport @s ~ ~ ~-0.219008251
execute if score @s attack_rad_min matches 30 run teleport @s ~ ~ ~-0.0
execute if score @s attack_rad_min matches 31 run teleport @s ~ ~ ~0.219008251
execute if score @s attack_rad_min matches 32 run teleport @s ~ ~ ~0.432623792
execute if score @s attack_rad_min matches 33 run teleport @s ~ ~ ~0.6355867
execute if score @s attack_rad_min matches 34 run teleport @s ~ ~ ~0.822899353
execute if score @s attack_rad_min matches 35 run teleport @s ~ ~ ~0.989949494
execute if score @s attack_rad_min matches 36 run teleport @s ~ ~ ~1.132623792
execute if score @s attack_rad_min matches 37 run teleport @s ~ ~ ~1.247409134
execute if score @s attack_rad_min matches 38 run teleport @s ~ ~ ~1.331479123
execute if score @s attack_rad_min matches 39 run teleport @s ~ ~ ~1.382763677
