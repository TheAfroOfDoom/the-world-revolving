# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\ui.mcfunction

# Handle UI interaction

# If player has dealt any damage, act as if they selected the "FIGHT" UI element
execute if score @s damage_dealt_tot matches 1.. run function theafroofdoom:entity/directorial/tutorial/basic/ui/select/attack

# If player has eaten, act as if they selected and used an item
execute if score @s ate_trop_fish matches 1.. run function theafroofdoom:entity/directorial/tutorial/basic/ui/select/items

# Replace all highlighted UI elements with un-highlighted UI elements except for the one the player is holding
execute if data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]} run tag @s add player_unhighlight
execute if data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}]} run tag @s add player_unhighlight
execute if data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}]} run tag @s add player_unhighlight
execute if entity @s[tag=player_unhighlight] run function theafroofdoom:entity/directorial/tutorial/basic/ui/highlight/disable

# Remove tag
tag @s remove player_unhighlight

# If player hovers over a UI item (), convert it to the highlighted variant (carrot_on_a_stick)
execute if data entity @s {SelectedItem:{id:"minecraft:emerald"}} run function theafroofdoom:entity/directorial/tutorial/basic/ui/highlight/enable

# Handle when a player has selected and right-clicked on part of the UI
execute if score @s coas_rclick matches 1.. run function theafroofdoom:entity/directorial/tutorial/basic/ui/select
