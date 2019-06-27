# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\items\disable\ui.mcfunction

# Act
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:1}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:7}}

# Act.Check
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:2}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:2}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:8}}

# Act.Hypnosis
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:3}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:3}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:9}}

# Act.Pirouette
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:4}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:4}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:10}}

# Attack
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:5}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:5}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:11}}

# Defend
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:6}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:6}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:12}}

# Items
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:7}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:7}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:13}}

# Magic
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:8}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:8}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:14}}

# Magic.Heal Prayer
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:9}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:9}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:15}}

# Magic.Pacify
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:10}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:10}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:16}}

# Magic.Rude Buster
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:11}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:11}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:17}}

# Spare
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:12}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:12}}] merge value {id:"minecraft:diamond",tag:{CustomModelData:18}}
