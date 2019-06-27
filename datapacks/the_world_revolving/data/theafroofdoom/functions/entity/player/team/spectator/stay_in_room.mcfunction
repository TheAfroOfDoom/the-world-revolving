# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\spectator\stay_in_room.mcfunction

# Store x-pos, y-pos, and z-pos in scores for easy math
execute store result score @s afro.math_1 run data get entity @s Pos[0] 1000
execute store result score @s afro.math_2 run data get entity @s Pos[1]
execute store result score @s afro.math_3 run data get entity @s Pos[2] 1000

# If x-pos is too small, teleport player +x
execute if score @s afro.math_1 matches ..-49000 at @s run teleport @s -48.999 ~ ~

# If x-pos is too large, teleport player -x
execute if score @s afro.math_1 matches 50000.. at @s run teleport @s 49.999 ~ ~

# If y-pos is too small, teleport player +y
execute if score @s afro.math_2 matches ..3 at @s run teleport @s ~ 4 ~

# If y-pos is too large, teleport player -y
execute if score @s afro.math_2 matches 29.. at @s run teleport @s ~ 28.99999 ~

# If z-pos is too small, teleport player +z
execute if score @s afro.math_3 matches ..-49000 at @s run teleport @s ~ ~ -48.999

# If z-pos is too large, teleport player -z
execute if score @s afro.math_3 matches 50000.. at @s run teleport @s ~ ~ 49.999
