# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\sort.mcfunction

# Base loop
function theafroofdoom:entity/player/team/player/loop

# Doing
# # Act
# # # Check
execute if entity @s[tag=player_is_doing_act_check] run function theafroofdoom:entity/player/team/player/do/act/check/loop

# # # Hypnosis
execute if entity @s[tag=player_is_doing_act_hypnosis] run function theafroofdoom:entity/player/team/player/do/act/hypnosis/loop

# # # Pirouette
execute if entity @s[tag=player_is_doing_act_pirouette] run function theafroofdoom:entity/player/team/player/do/act/pirouette/loop

# # Attack
execute if entity @s[tag=player_is_doing_attack] run function theafroofdoom:entity/player/team/player/do/attack/loop

# # Defend
execute if entity @s[tag=player_is_doing_defend] run function theafroofdoom:entity/player/team/player/do/defend/loop

# # Items
execute if entity @s[tag=player_is_doing_items] run function theafroofdoom:entity/player/team/player/do/items/loop

# # Magic
# # # Heal Prayer
execute if entity @s[tag=player_is_doing_magic_heal_prayer] run function theafroofdoom:entity/player/team/player/do/magic/heal_prayer/loop

# # # Pacify
execute if entity @s[tag=player_is_doing_magic_pacify] run function theafroofdoom:entity/player/team/player/do/magic/pacify/loop

# # # Rude Buster
execute if entity @s[tag=player_is_doing_magic_rude_buster] run function theafroofdoom:entity/player/team/player/do/magic/rude_buster/loop
