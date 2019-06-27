# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\start_intro.mcfunction

# NOTE(jordan): Add future boss fight start support

# Start pre-boss fight cutscene based on what room the player is in and based on quick_in global setting
execute if entity @s[tag=player_room_prison_arena] if score #global.room.boss_fight_vanilla.quick_in setting matches 0 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/summon_cutscene
execute if entity @s[tag=player_room_prison_arena] if score #global.room.boss_fight_vanilla.quick_in setting matches 1 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla_quick/summon_cutscene

# Format for more boss fights:
# execute unless entity @e[tag=cutscene] if entity @s[tag=player_room_INTROROOM] run function theafroofdoom:entity/directorial/cutscene/intro/VARIANT/summon_cutscene_intro_VARIANT
