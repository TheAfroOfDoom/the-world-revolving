# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\dead\join.mcfunction

# Leave whatever team player was already on (if any)
team leave @s

# Join the dead team
team join dead

# Update which players can see the bossbar
function theafroofdoom:entity/hostile/jevil/hitbox/set_bossbar_visibility

# Set spawnpoint
spawnpoint @s ~ ~ ~

# Set gamemode
gamemode spectator
