# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\ui\select\magic\pacify.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add player_is_doing_magic_pacify

# Display text
function theafroofdoom:entity/player/team/tutorial/basic/do/magic/pacify/text/0

# Remove tension points
function theafroofdoom:entity/player/team/tutorial/basic/tension_points/remove/magic/pacify

# Playsounds
playsound theafroofdoom:player.do.magic.pacify player @s ~ ~ ~ 15 1 0.5
playsound theafroofdoom:player.ui.select player @s ~ ~ ~ 15 1 1

# Disable PACIFY
execute if data entity @s {Inventory:[{id:"minecraft:emerald",tag:{CustomModelData:10}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/disable/magic/pacify

# Disable PACIFY (selected)
execute if data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}]} run function theafroofdoom:entity/player/team/tutorial/basic/items/disable/selected/magic/pacify

# Display particles
execute at @e[tag=training_dummy_basic] run particle instant_effect ~ ~2.5 ~ 1 1 1 0 100

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/tutorial/basic/items/disable

# Remove tags
tag @s remove player_is_not_doing
