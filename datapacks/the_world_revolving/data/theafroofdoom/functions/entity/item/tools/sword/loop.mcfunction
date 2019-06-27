# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\item\tools\sword\loop.mcfunction

# Update NBT so can be picked up immediately
data merge entity @s {PickupDelay:0}

# Teleport self to closest player entity
execute at @p run teleport @s ~ ~ ~
