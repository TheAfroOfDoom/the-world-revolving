# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\sort.mcfunction

# Base loop
function theafroofdoom:entity/player/team/tutorial/basic/loop

# Doing
# # Act
# # # Check
execute if entity @s[tag=player_is_doing_act_check] run function theafroofdoom:entity/player/team/tutorial/basic/do/act/check/loop

# # Attack
execute if entity @s[tag=player_is_doing_attack] run function theafroofdoom:entity/player/team/tutorial/basic/do/attack/loop

# # Defend
execute if entity @s[tag=player_is_doing_defend] run function theafroofdoom:entity/player/team/tutorial/basic/do/defend/loop

# # Items
execute if entity @s[tag=player_is_doing_items] run function theafroofdoom:entity/player/team/tutorial/basic/do/items/loop

# # Magic
# # # Pacify
execute if entity @s[tag=player_is_doing_magic_pacify] run function theafroofdoom:entity/player/team/tutorial/basic/do/magic/pacify/loop
