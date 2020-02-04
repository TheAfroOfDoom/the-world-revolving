# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\select.mcfunction

# NOTE(jordan): Update UI options here

# Act
# execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/act

# Act.Check
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/act/check

# Act.Hypnosis
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}} if score @s player_tpoints matches 50.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/act/hypnosis

# Act.Pirouette
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}} if score @s player_tpoints matches 20.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/act/pirouette

# Attack
# execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/attack

# Defend
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/defend

# Items
# execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/items

# Magic
# execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/magic

# Magic.Heal Prayer
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}} if score @s player_tpoints matches 32.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/magic/heal_prayer

# Magic.Pacify
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}} if score @s player_tpoints matches 16.. if score @e[limit=1,tag=boss_fight] bfight_tired matches ..0 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/magic/pacify

# Magic.Rude Buster
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}} if score @s player_tpoints matches 50.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/magic/rude_buster

# Spare
# execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12}}} run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui/select/spare

# Reset coas_rclick
scoreboard players reset @s coas_rclick
