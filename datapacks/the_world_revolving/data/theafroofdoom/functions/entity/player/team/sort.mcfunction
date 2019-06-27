# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\sort.mcfunction

# Advanced tutorial
execute if entity @s[team=tutorial_adv] run function theafroofdoom:entity/player/team/tutorial/advanced/sort

# Basic tutorial
execute if entity @s[team=tutorial_basic] run function theafroofdoom:entity/player/team/tutorial/basic/sort

# Credits
execute if entity @s[team=credits] run function theafroofdoom:entity/player/team/credits/sort

# Dead
execute if entity @s[team=dead] run function theafroofdoom:entity/player/team/dead/sort

# Playing the game
execute if entity @s[team=player] run function theafroofdoom:entity/player/team/player/sort

# Spectating
execute if entity @s[team=spectator] run function theafroofdoom:entity/player/team/spectator/sort
