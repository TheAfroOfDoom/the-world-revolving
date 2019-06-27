# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\red_damager.mcfunction

# Runs every tick off entities tagged "attack_damager_red_devilsknife"

# Setup Bullet ID system
function theafroofdoom:entity/hostile/bullet_id/setup

# Teleport self to match giant model
execute at @e[scores={bullet_id=0},tag=attack_bullet_red_devilsknife] run teleport @s ~ ~ ~ ~ ~

# Restore Bullet IDs
function theafroofdoom:entity/hostile/bullet_id/restore
