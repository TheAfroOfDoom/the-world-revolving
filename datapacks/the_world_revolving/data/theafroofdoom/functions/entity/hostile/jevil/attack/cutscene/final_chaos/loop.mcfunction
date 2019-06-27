# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\loop.mcfunction

# Runs every tick off entities tagged "jevil_is_attacking_cutscene"

# Increment attack_clock
scoreboard players add @s attack_clock 1

# Summon indicators at the following hard-coded times:
execute if score @s attack_clock matches 0 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -10
execute if score @s attack_clock matches 0 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 0 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 10 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 10
execute if score @s attack_clock matches 10 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 10 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 23 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -10
execute if score @s attack_clock matches 23 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 21
execute if score @s attack_clock matches 23 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 34 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 45 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 56 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 64 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 71 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 79 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 86 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 91 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 96 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 100 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 105 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 111 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 116 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 118 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 125 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 130 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 133 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -10
execute if score @s attack_clock matches 133 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 133 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 133 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 10
execute if score @s attack_clock matches 133 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 133 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 138 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -7
execute if score @s attack_clock matches 138 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 138 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 138 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 7
execute if score @s attack_clock matches 138 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 138 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 142 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -10
execute if score @s attack_clock matches 142 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 21
execute if score @s attack_clock matches 142 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 147 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 150 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 152 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 157 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 162 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 166 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -10
execute if score @s attack_clock matches 166 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 166 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 166 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 10
execute if score @s attack_clock matches 166 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 166 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 172 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -10
execute if score @s attack_clock matches 172 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 21
execute if score @s attack_clock matches 172 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 176 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -7
execute if score @s attack_clock matches 176 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 176 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 176 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 7
execute if score @s attack_clock matches 176 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 176 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 179 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -10
execute if score @s attack_clock matches 179 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 21
execute if score @s attack_clock matches 179 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 186 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 190 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -10
execute if score @s attack_clock matches 190 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 190 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 190 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 10
execute if score @s attack_clock matches 190 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 190 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 195 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -7
execute if score @s attack_clock matches 195 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 195 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 195 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 7
execute if score @s attack_clock matches 195 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 195 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 215 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -10
execute if score @s attack_clock matches 215 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 215 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 215 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 10
execute if score @s attack_clock matches 215 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 215 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 220 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -7
execute if score @s attack_clock matches 220 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 220 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 220 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 7
execute if score @s attack_clock matches 220 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 220 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 224 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -4
execute if score @s attack_clock matches 224 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 224 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 224 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 4
execute if score @s attack_clock matches 224 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 224 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 233 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 0
execute if score @s attack_clock matches 233 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 233 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 243 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -4
execute if score @s attack_clock matches 243 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 243 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 243 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 4
execute if score @s attack_clock matches 243 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 243 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 246 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -7
execute if score @s attack_clock matches 246 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 246 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 246 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 7
execute if score @s attack_clock matches 246 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 246 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

execute if score @s attack_clock matches 255 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min -10
execute if score @s attack_clock matches 255 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 255 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 255 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 0
execute if score @s attack_clock matches 255 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 255 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator
execute if score @s attack_clock matches 255 run scoreboard players set #attack_cutscene_final_chaos attack_rad_min 10
execute if score @s attack_clock matches 255 run scoreboard players set #attack_cutscene_final_chaos attack_rad_range 0
execute if score @s attack_clock matches 255 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_indicator

# Massive scythe
execute if score @s attack_clock matches 274 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_bullet_large

# Playsound for massive scythe
execute if score @s attack_clock matches 274 run playsound theafroofdoom:jevil.attack.cutscene.final_chaos.rumble hostile @a[tag=player_room_boss_fight_vanilla] 0 130 0 5 0 0.5

# Jevil phantom
execute if score @s attack_clock matches 189 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/summon_phantom
execute if score @s attack_clock matches 197 run data merge entity @e[tag=jevil_phantom_cutscene_final_chaos,limit=1] {ArmorItems:[{},{},{},{Count:1b,id:"minecraft:golden_shovel",tag:{CustomModelData:4}}]}
execute if score @s attack_clock matches 203 as @e[tag=jevil_phantom_cutscene_final_chaos] at @s run teleport @s ~ ~20 ~
execute if score @s attack_clock matches 210 run kill @e[tag=jevil_phantom_cutscene_final_chaos]

# Play voicelines
# "Bye, bye!"
scoreboard players set @s attack_voice 2
execute if score @s attack_clock matches 0 run function theafroofdoom:entity/hostile/jevil/attack/voiceline

# "Neochaos"
execute if score @s attack_clock matches 197 run scoreboard players set @s attack_voice 9
execute if score @s attack_clock matches 197 run function theafroofdoom:entity/hostile/jevil/attack/voiceline

# Shake players' screens randomly while large scythe is falling
execute if score @s attack_clock matches 280.. as @a[team=player] at @s run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/shake
execute if score @s attack_clock matches 280.. as @a[team=spectator] at @s run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/shake

# Give players blindness
execute if score @s attack_clock matches 350 run effect give @a[team=player] blindness 3 0 true
execute if score @s attack_clock matches 350 run effect give @a[team=spectator] blindness 3 0 true

# Prevent players underneath a certain health threshold from taking damage
# (AKA: dying, cannot die during this in Deltarune)
execute as @a[team=player] store result score @s afro.math_0 run data get entity @s Health 10
execute as @a[team=player] if score @s afro.math_0 matches ..40 unless data entity @s ActiveEffects[{Id:11b}] run effect give @s resistance 1000000 4 true

# Terminate at attack_length
execute if score @s attack_clock >= @s attack_length run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/terminate
