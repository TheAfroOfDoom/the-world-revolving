# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\terminate.mcfunction

# Runs at the end of players' turn during the boss fight

# Set scores
scoreboard players set @s bfight_turn 1

# Add tags
tag @s add boss_fight_turn_begin

# Increment bfight_pir_phase only if no players performed a pirouette
execute if entity @s[tag=!boss_fight_did_pirouette] run scoreboard players add @s bfight_pir_phase 1

# Remove tags
tag @s remove boss_fight_did_pirouette

# Set Jevil to invulnerable unless he has died/been pacified
execute unless score @s bfight_health matches ..0 unless score @s bfight_pacified matches 1.. run data merge entity @e[limit=1,tag=jevil_hitbox] {Invulnerable:1b}

# The two terminating conditions are mutually exclusive:
# If Jevil has ran out of health, summon and initialize Jevil-death cutscene director
execute if score @s bfight_health matches ..0 run function theafroofdoom:entity/directorial/boss_fight/vanilla/terminate/death

# If Jevil has been pacified, summon and initialize Jevil-pacified cutscene director
execute unless score @s bfight_health matches ..0 if score @s bfight_pacified matches 1.. run function theafroofdoom:entity/directorial/boss_fight/vanilla/terminate/pacified
