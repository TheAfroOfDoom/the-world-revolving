# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\hitbox\set_bossbar_visibility.mcfunction

# Sets which players can see the bossbar

# Add tags to players on team player, dead, and spectator
tag @a[team=dead] add player_see_bossbar
tag @a[team=player] add player_see_bossbar
tag @a[team=spectator] add player_see_bossbar

# Set players to see bossbar
bossbar set theafroofdoom:jevil.health players @a[tag=player_see_bossbar]

# Remove tags
tag @a remove player_see_bossbar
