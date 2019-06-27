# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\spade\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_bomb_new" with attack_variant = -1

# Set group ID
function theafroofdoom:entity/group_id/set_next

# Set scores
scoreboard players operation @s attack_ang_min = #attack_bomb_spade attack_ang_min
scoreboard players operation @s attack_ang_range = #attack_bomb_spade attack_ang_range
scoreboard players operation @s attack_bullets = #attack_bomb_spade attack_bullets
scoreboard players operation @s attack_cone = #attack_bomb_spade attack_cone
scoreboard players operation @s attack_diff = #attack_bomb_spade attack_diff
scoreboard players operation @s attack_model = #attack_bomb_spade attack_model
scoreboard players operation @s attack_model_1 = #attack_bomb_spade attack_model_1
scoreboard players operation @s attack_rad_min = #attack_bomb_spade attack_rad_min
scoreboard players operation @s attack_rad_range = #attack_bomb_spade attack_rad_range
scoreboard players set @s attack_variant -1

# Summon Jevil phantom for visual of him warping
summon armor_stand ~ ~31 ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:15}}],CustomName:"\"Bomb Phantom Spade\"",DisabledSlots:4144959,Invisible:1,Invulnerable:1,Silent:1,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","jevil_phantom","jevil_phantom_attack_bomb","jevil_phantom_attack_bomb_new","jevil_phantom_attack_bomb_spade"]}
execute store result entity @e[limit=1,tag=jevil_phantom_attack_bomb_new] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s attack_model

# Copy group ID to jevil phantom
function theafroofdoom:entity/group_id/copy

# Initialize Jevil phantom
execute as @e[tag=jevil_phantom_attack_bomb_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/bomb/spade/phantom/initialize

# Run base bomb indicator initialize function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/initialize
