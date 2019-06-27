# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\join.mcfunction

# If the basic tutorial is occupied, inform the player
execute if score #global.room.tutorial.basic.occupied setting matches 1 run function theafroofdoom:entity/player/team/tutorial/basic/occupied

# If there is no one in the basic tutorial, add player to basic tutorial
execute unless score #global.room.tutorial.basic.occupied setting matches 1 run function theafroofdoom:entity/player/team/tutorial/basic/join_helper
