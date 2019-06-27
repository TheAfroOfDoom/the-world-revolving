# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\prison\boss_fight_vanilla.mcfunction

# Teleport to active arena
teleport @s ~ ~ ~136

# If player has teleported to outside of the arena
# (ex. due to a server lag spike or not being in the inactive arena at the time of teleporting),
# teleport them back into it
execute unless entity @s[x=-30,y=3,z=-5,dx=60,dy=6,dz=10] unless entity @s[x=-21,y=3,z=-21,dx=42,dy=6,dz=42] unless entity @s[x=-5,y=3,z=-30,dx=10,dy=6,dz=60] run teleport @s 0 4 -15 0 0

# If player is a spectator, set their mode and update bossbar visibility
execute if entity @s[team=spectator] run gamemode spectator
execute if entity @s[team=spectator] run function theafroofdoom:entity/hostile/jevil/hitbox/set_bossbar_visibility

# Reset music index
scoreboard players set @s player_music -1

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_boss_fight_vanilla
tag @s remove player_travel_prison_to_boss_fight_vanilla
