# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\attack\shoot\example\loop.mcfunction

# Runs every tick off entities tagged "training_dummy_is_attacking_shoot"

# Increment attack_clock
scoreboard players add @s attack_clock 1

# Summon indicators at the following hard-coded times:
execute if score @s attack_clock matches 0 run scoreboard players set #prop_attack_shoot_example attack_rad_min -3
execute if score @s attack_clock matches 0 run scoreboard players set #prop_attack_shoot_example attack_rad_range 0
execute if score @s attack_clock matches 0 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator

execute if score @s attack_clock matches 7 run scoreboard players set #prop_attack_shoot_example attack_rad_min 3
execute if score @s attack_clock matches 7 run scoreboard players set #prop_attack_shoot_example attack_rad_range 0
execute if score @s attack_clock matches 7 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator

execute if score @s attack_clock matches 14 run scoreboard players set #prop_attack_shoot_example attack_rad_min 0
execute if score @s attack_clock matches 14 run scoreboard players set #prop_attack_shoot_example attack_rad_range 0
execute if score @s attack_clock matches 14 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator

execute if score @s attack_clock matches 21 run scoreboard players set #prop_attack_shoot_example attack_rad_min -3
execute if score @s attack_clock matches 21 run scoreboard players set #prop_attack_shoot_example attack_rad_range 7
execute if score @s attack_clock matches 21 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator
execute if score @s attack_clock matches 28 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator
execute if score @s attack_clock matches 35 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator
execute if score @s attack_clock matches 42 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator
execute if score @s attack_clock matches 49 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator
execute if score @s attack_clock matches 56 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator
execute if score @s attack_clock matches 63 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator
execute if score @s attack_clock matches 70 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator
execute if score @s attack_clock matches 77 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator
execute if score @s attack_clock matches 84 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator
execute if score @s attack_clock matches 91 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/summon_indicator

# Prevent players underneath a certain health threshold from taking damage
# (AKA: dying, cannot die during this in Deltarune)
execute as @a[team=tutorial_adv] store result score @s afro.math_0 run data get entity @s Health 10
execute as @a[team=tutorial_adv] if score @s afro.math_0 matches ..100 unless data entity @s ActiveEffects[{Id:11b}] run effect give @s resistance 1000000 4 true

# Terminate at attack_length
execute if score @s attack_clock matches 149 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/terminate
