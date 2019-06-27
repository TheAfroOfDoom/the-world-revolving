# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\base\indicator\shoot.mcfunction

# Kill highlighter
kill @e[scores={group_id=0},tag=attack_highlighter_rain]

# Activate bullets
tag @e[scores={group_id=0},tag=attack_bullet_rain_inactive] add attack_bullet_rain_active
tag @e[scores={group_id=0},tag=attack_bullet_rain_inactive] remove attack_bullet_rain_inactive
