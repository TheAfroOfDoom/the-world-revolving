# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\indicator\shoot.mcfunction

# Update tags
tag @e[scores={group_id=0},tag=attack_bullet_devilsknife_inactive] add attack_bullet_devilsknife_active
tag @e[scores={group_id=0},tag=attack_bullet_devilsknife_inactive] remove attack_bullet_devilsknife_inactive

# Reset attack_clock
scoreboard players set @s attack_clock -1

# Update bool afro.math_1
scoreboard players set @s afro.math_1 1
