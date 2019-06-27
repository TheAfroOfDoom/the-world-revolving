# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\loop.mcfunction

# Runs every tick off entities tagged "boss_fight_vanilla"

# Print error and quit boss_fight if there are no players playing
execute unless entity @a[team=player] unless entity @a[team=dead] run function theafroofdoom:entity/directorial/boss_fight/vanilla/error/no_players

# Print error and quit boss_fight if difficulty is Peaceful
execute store result score @s afro.math_3 run difficulty
execute if score @s afro.math_3 matches 0 run function theafroofdoom:entity/directorial/boss_fight/vanilla/error/peaceful

# If there are no players and only dead players, run the player's death cutscene
execute unless entity @a[team=player] if entity @a[team=dead] run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/death

# Give player weakness so they cannot deal damage unless they are holding a sword
execute as @a[team=player] unless data entity @s {ActiveEffects:[{Id:18b}]} unless data entity @s {SelectedItem:{id:"minecraft:diamond_sword"}} run effect give @s weakness 1000000 100 true
execute as @a[team=player] if data entity @s {ActiveEffects:[{Id:18b}],SelectedItem:{id:"minecraft:diamond_sword"}} run effect clear @s weakness

# Player's turn
execute if score @s bfight_turn matches 0 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/loop

# Jevil's turn
execute if score @s bfight_turn matches 1 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/loop

# If Jevil is tired, set scores and settings
execute if score @s bfight_tired matches ..0 as @e[tag=jevil,tag=!jevil_is_tired] at @s run function theafroofdoom:entity/hostile/jevil/boss_fight/vanilla/tired

# Run a loop on Jevil during the entirety of the boss fight
execute as @e[tag=jevil] at @s run function theafroofdoom:entity/hostile/jevil/boss_fight/vanilla/loop
