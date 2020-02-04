# THE WORLD REVOLVING
# function

# theafroofdoom:entity/directorial/boss_fight/vanilla/loop
# Runs every tick off entities tagged "boss_fight_vanilla"

# Print error and quit boss_fight if there are no players playing
execute unless entity @a[team=player] unless entity @a[team=dead] run function theafroofdoom:entity/directorial/boss_fight/vanilla/error/no_players

# Print error and quit boss_fight if difficulty is Peaceful
execute store result score @s afro.math_3 run difficulty
execute if score @s afro.math_3 matches 0 run function theafroofdoom:entity/directorial/boss_fight/vanilla/error/peaceful

# Player's turn
execute if score @s bfight_turn matches 0 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/loop

# Jevil's turn
execute if score @s bfight_turn matches 1 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/loop

# If Jevil is tired, set scores and settings
execute if score @s bfight_tired matches ..0 as @e[tag=jevil,tag=!jevil_is_tired] at @s run function theafroofdoom:entity/hostile/jevil/boss_fight/vanilla/tired

# Run a loop on Jevil during the entirety of the boss fight
execute as @e[tag=jevil] at @s run function theafroofdoom:entity/hostile/jevil/boss_fight/vanilla/loop
