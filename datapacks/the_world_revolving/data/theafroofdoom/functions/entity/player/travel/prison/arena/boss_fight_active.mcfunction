# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\prison\arena\boss_fight_active.mcfunction

# Only teleport player to boss fight if they are spectating
execute if entity @s[team=spectator] run tag @s add player_travel_prison_to_boss_fight_vanilla

# Give blindness if they are spectating
effect give @s[team=spectator] blindness 2 0 true

# If player is not on spectator team, warn them every 2 seconds
execute unless entity @s[team=spectator] run tellraw @s [{"color": "gray", "translate": "player.warning.boss_fight.must_be_spectating", "with": [{"color": "yellow", "translate": "player.warning.boss_fight.spectators"}]}]

# Set delay so player is not spammed with message
scoreboard players set @s player_trv_delay 60

# Remove tags
tag @s remove player_travel_prison_to_arena
