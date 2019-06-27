# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\rude_buster_wave\terminate.mcfunction

# Set score of associated player to finished magic
scoreboard players set @a[scores={group_id=0},team=tutorial_adv] player_clock 0

# Modify player effects
effect clear @a[scores={group_id=0},team=tutorial_adv] speed
effect give @a[scores={group_id=0},team=tutorial_adv] speed 1000000 1 true

# Playsound
playsound theafroofdoom:player.do.magic.rude_buster.hit player @a[team=tutorial_adv] ~ ~ ~ 15 1 0.5

# Display hit particles
execute at @e[tag=training_dummy_advanced] positioned ~ ~1.625 ~ anchored eyes run particle angry_villager ^ ^0.5 ^ 0.25 0.5 0.25 0.5 4
execute at @e[tag=training_dummy_advanced] positioned ~ ~1.625 ~ anchored eyes run particle damage_indicator ^ ^ ^ 0.3 0 0.3 0.1 7

# Display explosion particles around Training Dummy
execute at @e[tag=training_dummy_advanced] run particle explosion ~ ~2 ~ 1 1 1 0 5

# Kill self
kill @s
