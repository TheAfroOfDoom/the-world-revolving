# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\indicator\terminate.mcfunction

# Terminates entities tagged "attack_indicator_devilsknife"

# Vanish red devilsknife visual since it has death animation
execute as @e[scores={group_id=0},tag=attack_bullet_red_devilsknife] at @s run teleport ~ ~-100 ~

# Kill all associated bullets
kill @e[scores={group_id=0},tag=attack_bullet_devilsknife]
kill @e[scores={group_id=0},tag=attack_damager_devilsknife]
kill @e[scores={group_id=0},tag=attack_bullet_red_devilsknife]
kill @e[scores={group_id=0},tag=attack_damager_red_devilsknife]
kill @e[scores={group_id=0},tag=attack_grazer_devilsknife]
kill @e[scores={group_id=0},tag=attack_grazer_red_devilsknife]

# Kill the indicator
kill @s
