# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\phantom\condition\loop\afro.math_2\1.mcfunction

# If future height score is close enough to floor, stop descending using teleport
# and start falling with motion so OnGround updates properly

# Update NoGravity and Motion so phantom falls for last tick

#execute if score @s afro.math_0 matches 0 run data merge entity @s {Motion:[0.0d,-1.45d,0.0d],NoGravity:0b}
#execute if score @s afro.math_0 matches 1 run data merge entity @s {Motion:[0.0d,-1.63d,0.0d],NoGravity:0b}
#execute if score @s afro.math_0 matches 2 run data merge entity @s {Motion:[0.0d,-2.15d,0.0d],NoGravity:0b}
#execute if score @s afro.math_0 matches 3 run data merge entity @s {Motion:[0.0d,-2.56d,0.0d],NoGravity:0b}

# Update afro.math_2
scoreboard players set @s afro.math_2 1

# Update afro.math_6 for indicator so it summons bullets
scoreboard players set @e[scores={group_id=0},tag=attack_indicator_bomb] afro.math_6 1
