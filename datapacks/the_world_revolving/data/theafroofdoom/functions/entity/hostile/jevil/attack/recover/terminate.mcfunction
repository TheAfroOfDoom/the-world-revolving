# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\recover\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_recover"

# Add Tag
tag @s add jevil_is_not_attacking_recover
tag @s add jevil_is_not_attacking

# Set scores
scoreboard players reset @s attack_clock
scoreboard players reset @s attack_recover

# Remove Tag
tag @s remove jevil_is_attacking_recover

# Kill all attack entities
kill @e[tag=attack]
kill @e[tag=jevil_phantom_attack]
kill @e[tag=devilsknife_phantom]

# Teleport back to origin
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s origin_x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s origin_y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s origin_z

# Playsound for recovering Jevil
playsound theafroofdoom:jevil.attack.recover hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 5.0 1.0 1.0
