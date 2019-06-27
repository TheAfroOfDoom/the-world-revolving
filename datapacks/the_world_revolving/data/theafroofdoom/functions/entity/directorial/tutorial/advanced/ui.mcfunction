# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\ui.mcfunction

# Handle UI interaction

# If player has dealt any damage, act as if they selected the "FIGHT" UI element
execute if score @s damage_dealt_tot matches 1.. run function theafroofdoom:entity/directorial/tutorial/advanced/ui/select/attack

# Replace all highlighted UI elements with un-highlighted UI elements except for the one the player is holding
# (effectively an OR block to see if player has any of the three possible highlighted UI elements):
execute if data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}]} run tag @s add player_tutorial_advanced_disable_items
execute if data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}]} run tag @s add player_tutorial_advanced_disable_items
execute if data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16}}]} run tag @s add player_tutorial_advanced_disable_items
execute if entity @s[tag=player_tutorial_advanced_disable_items] run function theafroofdoom:entity/directorial/tutorial/advanced/ui/highlight/disable
tag @s remove player_tutorial_advanced_disable_items

# If player hovers over a UI item (), convert it to the highlighted variant (carrot_on_a_stick)
execute if data entity @s {SelectedItem:{id:"minecraft:emerald"}} run function theafroofdoom:entity/directorial/tutorial/advanced/ui/highlight/enable

# Handle when a player has selected and right-clicked on part of the UI
execute if score @s coas_rclick matches 1.. run function theafroofdoom:entity/directorial/tutorial/advanced/ui/select
