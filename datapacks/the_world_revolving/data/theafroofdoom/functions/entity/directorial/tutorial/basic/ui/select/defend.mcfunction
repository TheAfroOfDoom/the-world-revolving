# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\ui\select\defend.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add player_is_doing_defend

# Add tension points
function theafroofdoom:entity/player/team/tutorial/basic/tension_points/add/defend

# Give Resistance I for the next attack
effect give @s resistance 1000000 0 true

# Playsounds
playsound theafroofdoom:player.ui.select player @s ~ ~ ~
playsound item.armor.equip_iron player @s ~ ~ ~ 1 0.75

# Disable DEFEND
execute if data entity @s {Inventory:[{id:"minecraft:emerald",tag:{CustomModelData:6}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/disable/defend

# Disable DEFEND (selected)
execute if data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/disable/selected/defend

# Display particles
particle crit ~ ~1.25 ~ 0.5 0.5 0.5 0 10

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/tutorial/basic/items/disable

# Remove tags
tag @s remove player_is_not_doing
