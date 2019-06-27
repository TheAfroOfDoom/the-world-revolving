# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\phantom\loop.mcfunction

# Runs off entities tagged "jevil_phantom_attack_sentry"

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Increment attack_clock
scoreboard players add @s attack_clock 1

# Set model when hit ground
execute unless entity @s[tag=attack_bullet_sentry_modelled] if data entity @s {OnGround:1b} run data merge entity @s {ArmorItems:[{},{},{},{Count:1b,id:"minecraft:golden_sword",tag:{CustomModelData:20}}]}
execute unless entity @s[tag=attack_bullet_sentry_modelled] if data entity @s {OnGround:1b} store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s attack_model
execute unless entity @s[tag=attack_bullet_sentry_modelled] if data entity @s {OnGround:1b} run tag @s add attack_bullet_sentry_modelled

# Teleport down and out of sight at attack_clock = 50
execute if score @s attack_clock matches 50..54 run teleport @s ~ ~-1.0 ~

# Restore Group IDs
function theafroofdoom:entity/group_id/restore

# Terminate based on variant at attack_clock = 60
execute if score @s attack_clock matches 60 if score @s attack_variant matches -1 run function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/phantom/terminate
