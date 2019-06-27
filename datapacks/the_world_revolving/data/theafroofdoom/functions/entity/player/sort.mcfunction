# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\sort.mcfunction

# Always
function theafroofdoom:entity/player/loop

# On a team
execute if entity @s[team=!] run function theafroofdoom:entity/player/team/sort

# Not on a team
execute if entity @s[team=] run function theafroofdoom:entity/player/teamless/loop
