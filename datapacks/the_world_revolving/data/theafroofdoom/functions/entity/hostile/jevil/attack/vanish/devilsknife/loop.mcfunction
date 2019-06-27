# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\vanish\devilsknife\loop.mcfunction

# Push devilsknife up at the start of the devilsknife attack

# Increment attack_clock (0 - 19 - ceiling)
scoreboard players add @s attack_clock 1

# Push devilsknife upwards on the first tick
execute if score @s attack_clock matches 0 run teleport @s ~ ~12 ~ ~24 ~

# Spin devilsknife
execute unless score @s attack_clock matches 0 run teleport @s ~ ~ ~ ~24 ~

# Rising
execute if score @s attack_clock matches 20.. run function theafroofdoom:entity/hostile/jevil/attack/vanish/devilsknife/rising
