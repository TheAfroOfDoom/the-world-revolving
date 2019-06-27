# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\miscellaneous\pirouette_parrot\loop.mcfunction

# Increment parrot_clock
scoreboard players add @s parrot_clock 1

execute if score @s parrot_clock matches 0 run teleport @s ~ ~-23 ~ facing 0 ~ 0

# Add offset to yaw
execute if score @s parrot_clock matches 1 at @s store result score @s afro.math_2 run data get entity @s Rotation[0]
execute if score @s parrot_clock matches 1 run scoreboard players operation @s afro.math_3 += @s afro.math_2
execute if score @s parrot_clock matches 1 at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s afro.math_3

# Teleport forward based on speed
execute if score @s afro.math_0 matches 0 at @s rotated ~ 0 run teleport @s ^ ^ ^1.0
execute if score @s afro.math_0 matches 1 at @s rotated ~ 0 run teleport @s ^ ^ ^1.5
execute if score @s afro.math_0 matches 2 at @s rotated ~ 0 run teleport @s ^ ^ ^2.0

# Terminate if outside the arena walls
execute if score @s parrot_clock matches 10.. store result score @s afro.math_1 run data get entity @s Pos[0]
execute if score @s parrot_clock matches 10.. store result score @s afro.math_2 run data get entity @s Pos[2]

# afro.math_n = abs(afro.math_n)
execute if score @s afro.math_1 matches ..-1 run scoreboard players operation @s afro.math_1 *= #-1 constant
execute if score @s afro.math_2 matches ..-1 run scoreboard players operation @s afro.math_2 *= #-1 constant
scoreboard players remove @s afro.math_1 10
scoreboard players remove @s afro.math_2 10

execute if score @s parrot_clock matches 10.. if score @s afro.math_1 > #arena.wall.x constant run function theafroofdoom:entity/miscellaneous/pirouette_parrot/terminate
execute if score @s parrot_clock matches 10.. if score @s afro.math_2 > #arena.wall.z constant run function theafroofdoom:entity/miscellaneous/pirouette_parrot/terminate
