# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\indicator\summon_bullets_helper.mcfunction

# recursive function with exit condition being afro.math_3 = 0

# afro.math_0 = angle between bullets
# afro.math_2 = current yaw of indicator
# afro.math_3 = number of bullets left to summon

# Summon bullet based on variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/shoot/spade/indicator/summon_bullets_helper
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/shoot/diamond/indicator/summon_bullets_helper

# Copy indicator's yaw to latest bullet
execute store result entity @e[limit=1,tag=attack_bullet_shoot_new] Rotation[0] float 1 run scoreboard players get @s afro.math_2

# Store attack_charge_up as the damaging AEC's WaitTime
execute store result entity @e[limit=1,tag=attack_damager_shoot_new] WaitTime int 1 run scoreboard players get @s attack_charge_up

# Store attack_model as the damaging AEC's attack_model score for later
scoreboard players operation @e[tag=attack_bullet_shoot_new] attack_model = @s attack_model

# Rotate indicator's yaw to be ready for next bullet
scoreboard players operation @s afro.math_2 -= @s afro.math_0

# Decrement number of bullets left to summon
scoreboard players remove @s afro.math_3 1

# Remove "new" status of latest bullet
tag @e[tag=attack_bullet_shoot_new] remove attack_bullet_shoot_new

# Summon next bullet if afro.math_3 (attack_bullets) > 0
execute unless entity @s[scores={afro.math_3=..0}] run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/indicator/summon_bullets_helper
