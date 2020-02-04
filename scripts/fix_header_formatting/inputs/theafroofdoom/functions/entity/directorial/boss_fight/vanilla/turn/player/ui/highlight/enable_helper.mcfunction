# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\highlight\enable_helper.mcfunction

# REVIEW(jordan): Remove lines here that end up unused (ex: UI.Items, UI.Magic, etc.)
# NOTE(jordan): Add to this list if we add more UI elements

# Edit the shulker box
# Convert UI elements to their highlighted version

# NOTE(jordan): Shortcut version, can only do if the CustomModelData values are 1:1
execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald"}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald"}].id set value "minecraft:carrot_on_a_stick"

# Act
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:1}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:1}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}

# Act.Check
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:2}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:2}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}

# Act.Hypnosis
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:3}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:3}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}

# Act.Pirouette
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:4}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:4}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}

# Attack
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:5}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:5}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}

# Defend
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:6}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:6}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}

# Items
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:7}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:7}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}

# Magic
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:8}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:8}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}

# Magic.Heal Prayer
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:9}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:9}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}

# Magic.Pacify
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:10}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:10}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}

# Magic.Rude Buster
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:11}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:11}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}

# Spare
# execute if data block ~ ~ ~ {Items:[{id:"minecraft:emerald",tag:{CustomModelData:12}}]} run data modify block ~ ~ ~ Items[{id:"minecraft:emerald",tag:{CustomModelData:12}}] merge value {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12}}
