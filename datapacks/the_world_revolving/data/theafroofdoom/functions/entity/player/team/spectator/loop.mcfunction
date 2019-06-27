# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\spectator\loop.mcfunction

# If boss_fight is active and player has the correct room tag, ensure they are actually in the room
execute if entity @s[tag=player_room_boss_fight_vanilla] if entity @e[tag=boss_fight_vanilla] unless entity @e[tag=jevil_is_attacking_cutscene_final_chaos] run function theafroofdoom:entity/player/team/spectator/stay_in_room

# Same thing as above, but while Final Chaos attack is active
execute if entity @s[tag=player_room_boss_fight_vanilla] if entity @e[tag=boss_fight_vanilla] if entity @e[tag=jevil_is_attacking_cutscene_final_chaos] run function theafroofdoom:entity/player/team/spectator/stay_in_room/final_chaos

# Give permanent saturation
effect give @s saturation 1000000 0 true

# Clear any hunger
effect clear @s hunger
