# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\boss_fight\vanilla\damage.mcfunction

# If jevil_damage = 0, set model to standard
execute if score @s jevil_damage matches 0 run function theafroofdoom:entity/hostile/jevil/update_model

# If jevil_damage = 1..29, set model to first tier of damage animation
execute if score @s jevil_damage matches 1..29 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 16

# If jevil_damage = 30..49, set model to second tier of damage animation
execute if score @s jevil_damage matches 30..49 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 17

# If jevil_damage = 50.., set model to third tier of damage animation
execute if score @s jevil_damage matches 50.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 18

# Decrement jevil_damage
scoreboard players remove @s jevil_damage 1
