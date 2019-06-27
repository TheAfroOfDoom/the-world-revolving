# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\prop\player_death\heartbreak\loop.mcfunction

# Increment clock
scoreboard players add @s afro.math_0 1

# Update model / playsound / display particles at:
# Heart break
execute if score @s afro.math_0 matches 49 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 27
execute if score @s afro.math_0 matches 49 run playsound theafroofdoom:player.death.break player @a[tag=player_room_player_death] ~ ~ ~ 2 1 1

# Heart explode
execute if score @s afro.math_0 matches 79 run data remove entity @s ArmorItems[3]
execute if score @s afro.math_0 matches 79 run playsound theafroofdoom:player.death.explode player @a[tag=player_room_player_death] ~ ~ ~ 2 1 1
execute if score @s afro.math_0 matches 79 anchored eyes run particle block sandstone ^ ^ ^ 0 0 0 0 20

# Terminate
execute if score @s afro.math_0 matches 80 run function theafroofdoom:entity/directorial/cutscene/prop/player_death/heartbreak/terminate
