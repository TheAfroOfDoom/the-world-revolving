# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\miscellaneous\rude_buster_wave\terminate.mcfunction

# Set score of associated player to finished magic
scoreboard players set @a[scores={group_id=0},team=player] player_clock 0

# Modify player effects
effect clear @a[scores={group_id=0},team=player] speed
effect give @a[scores={group_id=0},team=player] speed 1000000 1 true

# Add damage to Jevil
# Rude Buster damage is roughly 1.6x = 8/5 Susie's normal hit damage
scoreboard players operation @s afro.math_0 = @a[scores={group_id=0},team=player] player_damage
scoreboard players operation @s afro.math_0 *= #8 constant
scoreboard players operation @s afro.math_0 /= #5 constant
scoreboard players operation @e[limit=1,tag=boss_fight] bfight_health -= @s afro.math_0
scoreboard players add @e[tag=jevil] jevil_damage 70

# Playsound of Jevil getting hit
playsound theafroofdoom:jevil.hurt hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 3 1

# Playsound
playsound theafroofdoom:player.do.magic.rude_buster.hit player @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 15 1 0.5

# Copy boss fight health to bossbar
execute store result bossbar theafroofdoom:jevil.health value run scoreboard players get @e[limit=1,tag=boss_fight] bfight_health

# Display explosion particles around Jevil
execute at @e[tag=jevil] run particle explosion ~ ~2 ~ 1 1 1 0 5

# Kill self
kill @s
