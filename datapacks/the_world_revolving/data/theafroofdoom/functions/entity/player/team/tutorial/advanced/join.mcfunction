# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\join.mcfunction

# If the advanced tutorial is occupied, inform the player
execute if score #global.room.tutorial.advanced.occupied setting matches 1 run function theafroofdoom:entity/player/team/tutorial/advanced/occupied

# If there is no one in the advanced tutorial, add player to advanced tutorial
execute unless score #global.room.tutorial.advanced.occupied setting matches 1 run function theafroofdoom:entity/player/team/tutorial/advanced/join_helper
