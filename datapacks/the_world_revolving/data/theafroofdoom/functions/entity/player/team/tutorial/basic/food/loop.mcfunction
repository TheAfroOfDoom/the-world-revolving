# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\food\loop.mcfunction

# If food score is not set, give hunger until it appears
execute unless score @s food matches -2147483648..2147483647 run effect clear @s saturation
execute unless score @s food matches -2147483648..2147483647 unless data entity @s ActiveEffects[{Id:17b}] run effect give @s hunger 1000000 126 true

# Decrease food level if it is too high
execute if score @s food matches 9.. unless data entity @s ActiveEffects[{Id:17b}] run effect give @s hunger 1000000 126 true
execute if score @s food matches ..8 run effect clear @s hunger

# Increase food level if it is too low
execute if score @s food matches ..7 unless data entity @s ActiveEffects[{Id:23b}] run effect give @s saturation 1000000 0 true
execute if score @s food matches 8.. run effect clear @s saturation
