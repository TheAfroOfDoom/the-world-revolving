# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\diamond\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_shoot_new" with attack_variant = -1

# Set group ID
function theafroofdoom:entity/group_id/set_next

# Set scores
scoreboard players operation @s attack_ang_min = #attack_shoot_diamond attack_ang_min
scoreboard players operation @s attack_ang_range = #attack_shoot_diamond attack_ang_range
scoreboard players operation @s attack_bullets = #attack_shoot_diamond attack_bullets
scoreboard players operation @s attack_charge_up = #attack_shoot_diamond attack_charge_up
scoreboard players operation @s attack_cone = #attack_shoot_diamond attack_cone
scoreboard players operation @s attack_model = #attack_shoot_diamond attack_model
scoreboard players operation @s attack_rad_min = #attack_shoot_diamond attack_rad_min
scoreboard players operation @s attack_rad_range = #attack_shoot_diamond attack_rad_range
scoreboard players set @s attack_variant -1

# Summon Jevil phantom for visual of him warping
summon armor_stand ~ ~-16 ~ {DisabledSlots:4144959,Invisible:1,Invulnerable:1,NoGravity:1,Tags:["the_world_revolving","groupable","needs_group_id","hostile","jevil_phantom","jevil_phantom_attack","jevil_phantom_attack_shoot","jevil_phantom_attack_shoot_new","jevil_phantom_attack_shoot_diamond"]}
# Copy group ID to Jevil phantom
function theafroofdoom:entity/group_id/copy

# Initialize Jevil phantom
execute as @e[tag=jevil_phantom_attack_shoot_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/shoot/diamond/phantom/initialize

# Run base shoot indicator initialize function
function theafroofdoom:entity/hostile/jevil/attack/shoot/base/indicator/initialize
