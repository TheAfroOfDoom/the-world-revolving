# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\initialize.mcfunction

# Initializes the boss fight

# Set scores
scoreboard players set @s bfight_index 1
scoreboard players set @s bfight_health 102400
scoreboard players set @s bfight_pacified 0
scoreboard players set @s bfight_phase 0
scoreboard players set @s bfight_phase_atk 0
scoreboard players set @s bfight_pir_phase 0
scoreboard players set @s bfight_turn 0

# Set next intro cutscene that runs to be quick
scoreboard players set #global.room.boss_fight_vanilla.quick_in setting 1

# Count number of players
execute store result score #settings.player_count setting if entity @a[team=player]

# bfight_length is the max amount of turns before Jevil is set to tired regardless of player actions
# bfight_length = 30 + (3 * (number_of_players - 1)) + (6 * (difficulty - 2))
#               = (6 * difficulty) + (3 * player_count) + 15
scoreboard players set @s bfight_length 30
scoreboard players operation @s afro.math_1 = #settings.player_count setting
scoreboard players remove @s afro.math_1 1
scoreboard players operation @s afro.math_1 *= #3 constant
scoreboard players operation @s bfight_length += @s afro.math_1
execute store result score @s afro.math_1 run difficulty
scoreboard players remove @s afro.math_1 2
scoreboard players operation @s afro.math_1 *= #5 constant
scoreboard players operation @s bfight_length += @s afro.math_1

# bfight_tired_phs controls minimum hypnoses per phase in order to progress to the next phase
#   - hypnoses decreases bfight_tired_phs by 2, pirouettes by 1
#
# bfight_tired_phs = difficulty + player_count
execute store result score @s bfight_tired_phs run difficulty
scoreboard players operation @s bfight_tired_phs += #settings.player_count setting

# bfight_tired = 5 * bfight_tired_phs
scoreboard players operation @s bfight_tired = @s bfight_tired_phs
scoreboard players operation @s bfight_tired *= #5 constant

# Keep track of how many tireds we need in a score that changes
scoreboard players operation @s afro.math_2 = @s bfight_tired_phs

# Initialize players
execute as @a[team=player] at @s run function theafroofdoom:entity/player/team/player/boss_fight/vanilla/initialize

# Set all attack parameters to default
function theafroofdoom:entity/hostile/jevil/attack/reset_scores

# Summon (if he doesn't exist) and initialize Jevil
execute as @e[tag=jevil] at @s run teleport @s ~ ~1 ~
execute unless entity @e[tag=jevil] run summon armor_stand ~ ~1 ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_shovel",tag:{CustomModelData:6}}],CustomName:'{"color":"dark_purple", "translate":"jevil.name"}',DisabledSlots:4144959,Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1,Rotation:[180.0f,0.0f],Team:jevil,Tags:["the_world_revolving","hostile","groupable","needs_group_id","jevil","jevil_new"]}
execute as @e[tag=jevil] at @s run function theafroofdoom:entity/hostile/jevil/boss_fight/vanilla/initialize

# If this was summoned manually without a cutscene, make all players travel to boss fight vanilla arena
tag @a[team=player] add player_travel_prison_to_boss_fight_vanilla
tag @a[team=spectator] add player_travel_prison_to_boss_fight_vanilla

# Move players not on either player or spectator team to prison
tag @a[tag=player_room_prison_arena,team=!player,team=!spectator] add player_travel_arena_to_prison

# Remove tag
tag @s remove boss_fight_new
