# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\select\items.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add player_is_doing_items

# Playsounds
playsound theafroofdoom:player.ui.select player @s ~ ~ ~
playsound theafroofdoom:player.do.item.heal player @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 2 1 0.1

# Handle if player ate a consumable
# Initialize super-fast regen
# Top cake
execute if score @s ate_apple matches 1.. run scoreboard players add @a[team=player] hearts_needed 20

# Choco Diamond
execute if score @s ate_beetroot matches 1.. run scoreboard players add @s hearts_needed 6

# Clubs sandwich
execute if score @s ate_cookie matches 1.. run scoreboard players add @a[team=player] hearts_needed 8

# Lancer cookie / Rouxls roux
execute if score @s ate_potato matches 1.. run scoreboard players add @s hearts_needed 8

# Dark candy
execute if score @s ate_trop_fish matches 1.. run scoreboard players add @s hearts_needed 10

# Reset ate scores
scoreboard players reset @s ate_apple
scoreboard players reset @s ate_beetroot
scoreboard players reset @s ate_cookie
scoreboard players reset @s ate_potato
scoreboard players reset @s ate_trop_fish

# Display particles
particle happy_villager ~ ~1.25 ~ 0.5 0.5 0.5 0 10

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable

# Remove tags
tag @s remove player_is_not_doing
