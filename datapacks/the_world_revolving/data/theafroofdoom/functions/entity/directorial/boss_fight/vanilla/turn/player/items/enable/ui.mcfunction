# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\items\enable\ui.mcfunction

# Act
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:7}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:7}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:1}}

# Act.Check
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:8}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:8}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:2}}

# Act.Hypnosis
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:9}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:9}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:3}}

# Act.Pirouette
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:10}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:10}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:4}}

# Attack
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:11}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:11}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:5}}

# Defend
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:12}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:12}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:6}}

# Items
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:13}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:13}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:7}}

# Magic
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:14}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:14}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:8}}

# Magic.Heal Prayer
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:15}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:15}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:9}}

# Magic.Pacify
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:16}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:16}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:10}}

# Magic.Rude Buster
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:17}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:17}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:11}}

# Spare
execute if data block ~ ~ ~ {Items:[{id:"minecraft:diamond",tag:{CustomModelData:18}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:diamond",tag:{CustomModelData:18}}] merge value {id:"minecraft:emerald",tag:{CustomModelData:12}}
