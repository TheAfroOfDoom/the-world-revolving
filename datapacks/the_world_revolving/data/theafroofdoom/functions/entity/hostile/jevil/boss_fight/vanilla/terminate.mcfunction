# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\boss_fight\vanilla\terminate.mcfunction

# Set scores
scoreboard players set @e[tag=lobby_jevil] jevil_cutscene 1

# Copy jevil_clock scorem y-position, and yaw to lobby_jevil
scoreboard players operation @e[limit=1,tag=lobby_jevil] jevil_clock = @s jevil_clock
execute store result entity @e[limit=1,tag=lobby_jevil] Pos[1] double 1 run data get entity @s Pos[1]
execute store result entity @e[limit=1,tag=lobby_jevil] Rotation[0] float 1 run data get entity @s Rotation[0]

# Update model
data modify entity @s ArmorItems[3].tag.CustomModelData set value 21
data modify entity @e[limit=1,tag=lobby_jevil] ArmorItems[3].tag.CustomModelData set value 21

# Reset scores
scoreboard players reset @s jevil_damage
scoreboard players reset @s jevil_dance
