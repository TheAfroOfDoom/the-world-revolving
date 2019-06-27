# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\boss_fight\vanilla\hurt.mcfunction

# Playsound of Jevil getting hit
playsound theafroofdoom:jevil.hurt hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 15 1

# Add to damage counter that controls animation
scoreboard players add @s jevil_damage 25

# Cap jevil_damage at 80
execute if score @s jevil_damage matches 81.. run scoreboard players set @s jevil_damage 80

# Increase jevil's dance speed the lower his health is
execute store result score @s afro.math_0 run data get entity @e[limit=1,scores={group_id=0},tag=jevil_hitbox] Health 100
execute if score @s jevil_dance matches 0.. if score @s afro.math_0 matches ..81920 run scoreboard players set @s jevil_dance 1
execute if score @s jevil_dance matches 1.. if score @s afro.math_0 matches ..61440 run scoreboard players set @s jevil_dance 2
execute if score @s jevil_dance matches 2.. if score @s afro.math_0 matches ..40960 run scoreboard players set @s jevil_dance 3
execute if score @s jevil_dance matches 3.. if score @s afro.math_0 matches ..20480 run scoreboard players set @s jevil_dance 4
