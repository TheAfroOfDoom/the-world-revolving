# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\items\disable_helper.mcfunction

# NOTE(jordan): Add to this list if we add more items

# Edit the shulker box
# Convert items to their disabled version
# # Healing
# Beetroot - Choco Diamond
execute if data block ~ ~ ~ {Items:[{id:"minecraft:beetroot",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:beetroot",tag:{CustomModelData:1}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:1}}

# Cookie - Clubs Sandwich
execute if data block ~ ~ ~ {Items:[{id:"minecraft:cookie",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:cookie",tag:{CustomModelData:1}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:2}}

# Tropical Fish - Dark Candy
execute if data block ~ ~ ~ {Items:[{id:"minecraft:tropical_fish",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:tropical_fish",tag:{CustomModelData:1}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:3}}

# Potato - Lancer Cookie
execute if data block ~ ~ ~ {Items:[{id:"minecraft:potato",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:potato",tag:{CustomModelData:1}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:4}}

# Potato - Rouxls Roux
execute if data block ~ ~ ~ {Items:[{id:"minecraft:potato",tag:{CustomModelData:2}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:potato",tag:{CustomModelData:2}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:5}}

# Top Cake (Apple)
execute if data block ~ ~ ~ {Items:[{id:"minecraft:apple",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:apple",tag:{CustomModelData:1}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:6}}

# Sword
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:19}}

# # UI
# Deselected
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald"}]} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable/ui

# Selected
execute if data block ~ ~ ~ {Items:[{id:"minecraft:carrot_on_a_stick"}]} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable/ui_selected
