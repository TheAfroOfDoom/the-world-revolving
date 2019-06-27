# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\loop_inactive.mcfunction

# Runs every tick off entities tagged "attack_indicator_ring_around_inactive"

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Activate once ring hits the ground
execute if entity @e[nbt={OnGround:1b},scores={group_id=0},tag=attack_bullet_ring_around] run tag @s add attack_indicator_ring_around_active
execute if entity @s[tag=attack_indicator_ring_around_active] run tag @s remove attack_indicator_ring_around_falling

# Restore Group IDs
function theafroofdoom:entity/group_id/restore