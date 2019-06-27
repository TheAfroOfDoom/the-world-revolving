# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\base\indicator\condition\loop\attack_clock\0.mcfunction

# Give highlighter model based on current animation offset score
data merge entity @e[limit=1,scores={group_id=0},tag=attack_highlighter_rain] {ArmorItems:[{},{},{},{Count:1b,id:"minecraft:golden_pickaxe",tag:{CustomModelData:1}}]}

execute as @e[limit=1,scores={group_id=0},tag=attack_highlighter_rain] at @s run teleport ~ ~1 ~
