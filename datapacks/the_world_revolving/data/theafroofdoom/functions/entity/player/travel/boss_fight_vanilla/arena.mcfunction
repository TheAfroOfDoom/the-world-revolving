# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\boss_fight_vanilla\arena.mcfunction

# Reset music index
scoreboard players set @s player_music -1

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_prison
tag @s add player_room_prison_arena
tag @s remove player_travel_boss_fight_vanilla_to_prison_arena
