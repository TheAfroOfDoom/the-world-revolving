# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\sort.mcfunction

# Base loop
function theafroofdoom:entity/player/team/tutorial/advanced/loop

# Doing
# # Skip
execute if entity @s[tag=player_is_doing_skip] run function theafroofdoom:entity/player/team/tutorial/advanced/do/skip/loop

# # Magic
# # # Heal Prayer
execute if entity @s[tag=player_is_doing_magic_heal_prayer] run function theafroofdoom:entity/player/team/tutorial/advanced/do/magic/heal_prayer/loop

# # # Rude Buster
execute if entity @s[tag=player_is_doing_magic_rude_buster] run function theafroofdoom:entity/player/team/tutorial/advanced/do/magic/rude_buster/loop
