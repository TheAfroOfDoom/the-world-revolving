# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\vanish\base.mcfunction

# Vanishes Jevil at the start of each attack

# Playsound for vanishing Jevil
playsound theafroofdoom:jevil.attack.vanish hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 5.0 1.0 1.0

# Summon particles
particle minecraft:witch ~ ~ ~ 0 2 0 0.25 100 force
