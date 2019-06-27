# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel.mcfunction

# Handle if a player needs to travel
execute if entity @s[tag=player_travel_boss_fight_vanilla_to_player_death] run function theafroofdoom:entity/player/travel/boss_fight_vanilla/player_death
execute if entity @s[tag=player_travel_boss_fight_vanilla_to_prison_arena] run function theafroofdoom:entity/player/travel/boss_fight_vanilla/arena

execute if entity @s[tag=player_travel_club_to_lobby] run function theafroofdoom:entity/player/travel/club/lobby

execute if entity @s[tag=player_travel_credits_to_lobby] run function theafroofdoom:entity/player/travel/credits/lobby
execute if entity @s[tag=player_travel_credits_to_prison] run function theafroofdoom:entity/player/travel/credits/prison

execute if entity @s[tag=player_travel_lobby_1_to_5] run function theafroofdoom:entity/player/travel/lobby/1_to_5
execute if entity @s[tag=player_travel_lobby_5_to_1] run function theafroofdoom:entity/player/travel/lobby/5_to_1
execute if entity @s[tag=player_travel_lobby_to_club] run function theafroofdoom:entity/player/travel/lobby/club
execute if entity @s[tag=player_travel_lobby_to_credits] run function theafroofdoom:entity/player/travel/lobby/credits
execute if entity @s[tag=player_travel_lobby_to_prison] run function theafroofdoom:entity/player/travel/lobby/prison
execute if entity @s[tag=player_travel_lobby_to_shop] run function theafroofdoom:entity/player/travel/lobby/shop
execute if entity @s[tag=player_travel_lobby_to_tutorial_advanced] run function theafroofdoom:entity/player/travel/lobby/tutorial_advanced
execute if entity @s[tag=player_travel_lobby_to_tutorial_basic] run function theafroofdoom:entity/player/travel/lobby/tutorial_basic

execute if entity @s[tag=player_travel_player_death_to_prison] run function theafroofdoom:entity/player/travel/player_death/prison

execute if entity @s[tag=player_travel_arena_to_prison] run function theafroofdoom:entity/player/travel/prison/from_arena
execute if entity @s[tag=player_travel_prison_to_arena] run function theafroofdoom:entity/player/travel/prison/arena
execute if entity @s[tag=player_travel_prison_to_boss_fight_vanilla] run function theafroofdoom:entity/player/travel/prison/boss_fight_vanilla
execute if entity @s[tag=player_travel_prison_to_lobby] run function theafroofdoom:entity/player/travel/prison/lobby

execute if entity @s[tag=player_travel_shop_to_lobby] run function theafroofdoom:entity/player/travel/shop/lobby

execute if entity @s[tag=player_travel_tutorial_advanced_to_lobby] run function theafroofdoom:entity/player/travel/tutorial_advanced/lobby

execute if entity @s[tag=player_travel_tutorial_basic_to_lobby] run function theafroofdoom:entity/player/travel/tutorial_basic/lobby
