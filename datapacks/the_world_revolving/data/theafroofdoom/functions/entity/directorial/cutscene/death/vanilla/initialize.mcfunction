# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\death\vanilla\initialize.mcfunction

# Make players officially travel to prison_arena so music plays
tag @a[team=dead] add player_travel_boss_fight_vanilla_to_prison_arena
tag @a[team=player] add player_travel_boss_fight_vanilla_to_prison_arena
tag @a[team=spectator] add player_travel_boss_fight_vanilla_to_prison_arena

# Add room tag early so cutscene doesn't delete itself immediately
tag @a[team=dead] add player_room_prison
tag @a[team=player] add player_room_prison
tag @a[team=spectator] add player_room_prison

# Clear player inventories
clear @a[team=player]

# Reset tension points
scoreboard players reset @a[team=player] player_tpoints

# Summon (if he doesn't exist for some reason) and initialize Lobby Jevil
execute unless entity @e[tag=lobby_jevil] run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_shovel",tag:{CustomModelData:6}}],CustomName:'"Jevil Lobby"',DisabledSlots:4144959,Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1,Rotation:[180.0f,0.0f],Team:jevil,Tags:["the_world_revolving","decorative","decorative_boss_fight_vanilla","lobby_jevil"]}
execute as @e[tag=lobby_jevil] at @s run function theafroofdoom:entity/directorial/cutscene/prop/death/vanilla/lobby_jevil/initialize

# Set scores
scoreboard players set @s afro.math_0 -1
scoreboard players set @s cutscn_text_id 0
scoreboard players set @s cutscn_text_time -1

# Kill Jevil (fight)
kill @e[tag=jevil]

# Remove tag
tag @s remove cutscene_new
