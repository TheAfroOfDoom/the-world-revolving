# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\interact.mcfunction

# Do behavior for when a player who will be playing the boss fight clicks on a villager
execute if entity @s[tag=player_room_prison_arena,team=player] run function theafroofdoom:entity/player/team/player/interact_jevil

# If player is not on the playing team, warn them
execute if entity @s[tag=player_room_prison_arena] unless entity @s[team=player] run tellraw @s [{"color": "red", "translate": "player.warning.boss_fight.no_team", "with": [{"color": "blue", "translate": "player.warning.boss_fight.playing"}]}]

# Reset interact score
scoreboard players reset @s player_interact
