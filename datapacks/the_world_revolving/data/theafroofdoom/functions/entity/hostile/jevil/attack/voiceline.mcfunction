# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\voiceline.mcfunction

# Play a voiceline based on score
execute if score @s attack_voice matches 1 run playsound theafroofdoom:jevil.voiceline.anything hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
execute if score @s attack_voice matches 2 run playsound theafroofdoom:jevil.voiceline.byebye hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
execute if score @s attack_voice matches 3 run playsound theafroofdoom:jevil.voiceline.chaos hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
execute if score @s attack_voice matches 4 run playsound theafroofdoom:jevil.voiceline.ha.0 hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
execute if score @s attack_voice matches 5 run playsound theafroofdoom:jevil.voiceline.ha.1 hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
execute if score @s attack_voice matches 6 run playsound theafroofdoom:jevil.voiceline.laugh.0 hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
execute if score @s attack_voice matches 7 run playsound theafroofdoom:jevil.voiceline.laugh.1 hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
execute if score @s attack_voice matches 8 run playsound theafroofdoom:jevil.voiceline.metamorphosis hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
execute if score @s attack_voice matches 9 run playsound theafroofdoom:jevil.voiceline.neochaos hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
execute if score @s attack_voice matches 10 run playsound theafroofdoom:jevil.voiceline.oh hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 10 1 1
