# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\items\enable_helper.mcfunction

# NOTE(jordan): Add to this list if we add more items

# Edit the shulker box
# Convert items to their enabled version
# # Healing
# Beetroot - Choco Diamond
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:1}}] merge value {id:"minecraft:beetroot",tag:{CustomModelData:1}}

# Cookie - Clubs Sandwich
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:2}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:2}}] merge value {id:"minecraft:cookie",tag:{CustomModelData:1}}

# Tropical Fish - Dark Candy
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:3}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:3}}] merge value {id:"minecraft:tropical_fish",tag:{CustomModelData:1}}

# Potato - Lancer Cookie
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:4}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:4}}] merge value {id:"minecraft:potato",tag:{CustomModelData:1}}

# Potato - Rouxls Roux
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:5}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:5}}] merge value {id:"minecraft:potato",tag:{CustomModelData:2}}

# Apple - Top Cake
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:6}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:6}}] merge value {id:"minecraft:apple",tag:{CustomModelData:1}}

# Sword
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:19}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:19}}] merge value {id:"minecraft:diamond_sword",tag:{CustomModelData:1}}

# # UI
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond"}]} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/enable/ui
