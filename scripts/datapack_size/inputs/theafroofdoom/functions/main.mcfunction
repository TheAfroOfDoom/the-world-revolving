# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \main.mcfunction

# Run self-sort on players
execute as @a at @s run function theafroofdoom:entity/player/sort

# Run self-sort on the_world_revolving entities
execute as @e[tag=the_world_revolving] at @s run function theafroofdoom:entity/sort

# Run self-sort on non-TWR items
execute as @e[tag=!the_world_revolving,type=item] at @s run function theafroofdoom:entity/item/sort

# Reset world border when it hits max (only matters when at least 1 player is on anyway)
tag @a[sort=arbitrary,limit=1] add player_testing_worldborder
execute store result score @a[tag=player_testing_worldborder] afro.math_0 run worldborder get
execute if score @a[tag=player_testing_worldborder,limit=1] afro.math_0 matches 60000000 run function theafroofdoom:reset_worldborder
tag @a remove player_testing_worldborder

# Global room-logic
function theafroofdoom:room/loop

# Reset ID Counts
execute unless entity @e[tag=groupable] run scoreboard players set #group_id_next group_id 0
execute unless entity @e[tag=groupable_bullet] run scoreboard players set #bullet_id_next bullet_id 0
