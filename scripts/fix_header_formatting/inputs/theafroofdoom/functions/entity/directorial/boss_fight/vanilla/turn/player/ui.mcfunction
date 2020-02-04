# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui.mcfunction

# Handle UI interaction

# If player has dealt any damage, act as if they selected the "ATTACK" UI element
execute if score @s damage_dealt_tot matches 1.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/attack

# NOTE(jordan): Add new healing items here
# If player has eaten, act as if they selected and used an item
execute if score @s ate_apple matches 1.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/items
execute if score @s ate_beetroot matches 1.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/items
execute if score @s ate_cookie matches 1.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/items
execute if score @s ate_potato matches 1.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/items
execute if score @s ate_trop_fish matches 1.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/items

# Replace all highlighted UI elements with un-highlighted UI elements except for the one the player is holding
execute if data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick"}]} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/highlight/disable

# If player hovers over a UI item (emerald), convert it to the highlighted variant (carrot_on_a_stick)
execute if data entity @s {SelectedItem:{id:"minecraft:emerald"}} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/highlight/enable

# Handle when a player has selected and right-clicked on part of the UI
execute if score @s coas_rclick matches 1.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select
