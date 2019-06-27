# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\indicator\condition\loop\summon_bullets\attack_diff\0_helper.mcfunction

# recursive function with exit condition being afro.math_3 = 0

# afro.math_0 = angle between bullets
# afro.math_2 = current yaw of indicator
# afro.math_3 = number of bullets left to summon

# Summon bullet based on variant
execute if entity @s[scores={attack_variant=-4}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/club/indicator/condition/loop/summon_bullets/attack_diff/0_helper
execute if entity @s[scores={attack_variant=-3}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/diamond/indicator/condition/loop/summon_bullets/attack_diff/0_helper
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/indicator/condition/loop/summon_bullets/attack_diff/0_helper
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/spade/indicator/condition/loop/summon_bullets/attack_diff/0_helper

# Copy indicator's yaw to latest bullet
execute store result entity @e[limit=1,tag=attack_bullet_bomb_new] Rotation[0] float 1 run scoreboard players get @s afro.math_2

# Store attack_model as the damaging AEC's attack_model score for later
scoreboard players operation @e[tag=attack_bullet_bomb_new] attack_model = @s attack_model_1

# Rotate indicator's yaw to be ready for next bullet
scoreboard players operation @s afro.math_2 -= @s afro.math_0

# Decrement number of bullets left to summon
scoreboard players remove @s afro.math_3 1

# Remove "new" status of latest bullet
tag @e[tag=attack_bullet_bomb_new] remove attack_bullet_bomb_new

# Summon next bullet if afro.math_3 (attack_bullets) > 0
execute unless entity @s[scores={afro.math_3=..0}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/summon_bullets/attack_diff/0_helper
