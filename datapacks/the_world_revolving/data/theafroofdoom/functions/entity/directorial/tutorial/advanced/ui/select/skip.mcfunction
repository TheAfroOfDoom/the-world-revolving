# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\ui\select\skip.mcfunction

# Set scores
scoreboard players set @s player_clock -1
scoreboard players set @s player_skip 1

# Add tags
tag @s add player_is_doing_skip

# Playsounds
playsound theafroofdoom:player.ui.select player @s ~ ~ ~

# Disable SKIP
execute if data entity @s {Inventory:[{id:"minecraft:emerald",tag:{CustomModelData:13}}]} run function theafroofdoom:entity/player/team/tutorial/advanced/items/disable/skip

# Disable SKIP (selected)
execute if data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16}}]} run function theafroofdoom:entity/player/team/tutorial/advanced/items/disable/selected/skip

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/tutorial/advanced/items/disable

# Remove tags
tag @s remove player_is_not_doing
