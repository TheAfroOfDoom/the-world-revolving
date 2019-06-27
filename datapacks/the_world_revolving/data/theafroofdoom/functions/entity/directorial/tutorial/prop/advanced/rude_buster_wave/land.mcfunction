# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\rude_buster_wave\land.mcfunction

# Runs once when the rude_buster_wave hits the ground

# Update model
data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:22}}]}

# Playsound
playsound theafroofdoom:player.do.magic.rude_buster.swing player @a[team=tutorial_adv] ~ ~ ~ 15 1 0.5

# Display swipe particle in front of associated player
execute as @a[scores={group_id=0},team=tutorial_adv] at @s anchored eyes run particle sweep_attack ^ ^ ^0.5

# Modify associated player's effects
effect give @a[scores={group_id=0},team=tutorial_adv] speed 1000000 4 true
effect clear @a[scores={group_id=0},team=tutorial_adv] slowness

# Set flag
scoreboard players set @s afro.math_0 1
