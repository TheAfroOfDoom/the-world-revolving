# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\spectator\stay_in_room\final_chaos.mcfunction

# Store x-pos, y-pos, and z-pos in scores for easy math
execute store result score @s afro.math_1 run data get entity @s Pos[0] 1000
execute store result score @s afro.math_2 run data get entity @s Pos[1]
execute store result score @s afro.math_3 run data get entity @s Pos[2] 1000

# If x-pos is too small, teleport player +x
execute if score @s afro.math_1 matches ..-15000 at @s run teleport @s -14.999 ~ ~

# If x-pos is too large, teleport player -x
execute if score @s afro.math_1 matches 16000.. at @s run teleport @s 15.999 ~ ~

# If y-pos is too small, teleport player +y
execute if score @s afro.math_2 matches ..101 at @s run teleport @s ~ 102 ~

# If y-pos is too large, teleport player -y
execute if score @s afro.math_2 matches 128.. at @s run teleport @s ~ 127.99999 ~

# If z-pos is too small, teleport player +z
execute if score @s afro.math_3 matches ..-6000 at @s run teleport @s ~ ~ -5.999

# If z-pos is too large, teleport player -z
execute if score @s afro.math_3 matches 7000.. at @s run teleport @s ~ ~ 6.999
