# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\boss_fight\vanilla\initialize.mcfunction

# Initializes players for the vanilla boss fight

# Update inventory
function theafroofdoom:entity/player/team/player/inventory/boss_fight/vanilla/give

# Clear effects from previous fights
effect clear @s resistance
effect clear @s strength
effect clear @s weakness

# Apply effects
effect give @s speed 1000000 1 true
effect give @s instant_health 10 0 true

# Reset scores and tags
function theafroofdoom:entity/player/team/player/reset_scores
function theafroofdoom:entity/player/team/player/reset_tags

# Reset tension points
scoreboard players set @s player_tpoints 0

# Copy calculated number of players
scoreboard players operation @s afro.math_0 = #settings.player_count setting

# Scale players' damage down according to number of players
# Check sheet for formula
# x = Player count
scoreboard players operation @s afro.math_1 = @s afro.math_0
# x = Player count - 1
scoreboard players remove @s afro.math_1 1
# x = 0.25 * (Playercount - 1)
scoreboard players operation @s afro.math_1 /= #4 constant

# y = average swings per turn
scoreboard players set @s player_damage 1
# y = aspt * player_count
scoreboard players operation @s player_damage *= @s afro.math_0

# x = x + y
scoreboard players operation @s afro.math_1 += @s player_damage

# y = avg total dmg per turn (uncritted)
scoreboard players set @s player_damage 55296

# y = y / x = damage per swing
scoreboard players operation @s player_damage /= @s afro.math_1

# x = 3 - difficulty
scoreboard players set @s afro.math_1 3
execute store result score @s afro.math_2 run difficulty
scoreboard players operation @s afro.math_1 -= @s afro.math_2
scoreboard players operation @s afro.math_1 /= #settings.player_count setting

# y = y + x = total damage per turn
scoreboard players operation @s player_damage += @s afro.math_1

# Normalize damage
scoreboard players operation @s player_damage /= #10 constant

# # Default player damage = 1 (0.5 hearts)
# # Desired damage = y
# # Just apply by multiplying?
# 
# # Apply attribute to sword
# function phi.modifyinv:setup/whole_inventory
# 
# function phi.modifyinv:load/hotbar
# execute if data block -30000000 0 1602 Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}] store result block -30000000 0 1602 Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}].tag.AttributeModifiers[{AttributeName:"generic.attackDamage"}].Amount float 0.001 run scoreboard players get @s player_damage
# function phi.modifyinv:apply/hotbar
# 
# function phi.modifyinv:load/offhand
# execute if data block -30000000 0 1602 Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}] store result block -30000000 0 1602 Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}].tag.AttributeModifiers[{AttributeName:"generic.attackDamage"}].Amount float 0.001 run scoreboard players get @s player_damage
# function phi.modifyinv:apply/offhand
# 
# function phi.modifyinv:load/inventory
# execute if data block -30000000 0 1602 Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}] store result block -30000000 0 1602 Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:1}}].tag.AttributeModifiers[{AttributeName:"generic.attackDamage"}].Amount float 0.001 run scoreboard players get @s player_damage
# function phi.modifyinv:apply/inventory
# 