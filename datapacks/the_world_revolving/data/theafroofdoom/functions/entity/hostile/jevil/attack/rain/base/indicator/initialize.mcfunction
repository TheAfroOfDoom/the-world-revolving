# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\base\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_rain_new"

# Set scores
scoreboard players set @s attack_clock -1

# Copy group ID to bullet and highlighter
function theafroofdoom:entity/group_id/copy

# Randomize location attack is shot from
function theafroofdoom:entity/hostile/jevil/attack/rain/base/indicator/randomize/location

# Select a player for this bullet to focus on
tag @r[team=player] add player_target

# Add target player's position to randomized position
execute store result score @s afro.math_0 run data get entity @a[limit=1,tag=player_target] Pos[0] 100
execute store result score @s afro.math_1 run data get entity @a[limit=1,tag=player_target] Pos[2] 100
scoreboard players operation @s afro.math_2 += @s afro.math_0
scoreboard players operation @s afro.math_3 += @s afro.math_1

# Add predicted player motion vector to randomized position
scoreboard players operation @s afro.math_0 = @a[limit=1,tag=player_target] pos_dx
scoreboard players operation @s afro.math_1 = @a[limit=1,tag=player_target] pos_dz
# afro.math_0 *= 5, afro_math_1 *= 5
scoreboard players operation @s afro.math_0 *= #5 constant
scoreboard players operation @s afro.math_1 *= #5 constant
scoreboard players operation @s afro.math_2 += @s afro.math_0
scoreboard players operation @s afro.math_3 += @s afro.math_1

# Center position value
scoreboard players add @s afro.math_2 50
scoreboard players add @s afro.math_3 50

# Store randomized location to bullet and highlighter
execute store result entity @e[limit=1,tag=attack_bullet_rain_new] Pos[0] double 0.01 run scoreboard players get @s afro.math_2
execute store result entity @e[limit=1,tag=attack_bullet_rain_new] Pos[2] double 0.01 run scoreboard players get @s afro.math_3

execute store result entity @e[limit=1,tag=attack_highlighter_rain_new] Pos[0] double 0.01 run scoreboard players get @s afro.math_2
execute store result entity @e[limit=1,tag=attack_highlighter_rain_new] Pos[2] double 0.01 run scoreboard players get @s afro.math_3

# Remove Tags
tag @s remove attack_indicator_rain_new
tag @e remove attack_bullet_rain_new
tag @e remove attack_highlighter_rain_new
tag @a[tag=player_room_boss_fight_vanilla] remove player_target