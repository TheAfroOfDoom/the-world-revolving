# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\player_death\initialize.mcfunction

# Set scores
scoreboard players set @s cutscn_text_time 59

# Add room tag early so cutscene doesn't delete itself immediately
tag @a[tag=player_room_boss_fight_vanilla] add player_room_player_death

# Make players officially travel to player_death room
tag @a[tag=player_room_player_death] add player_travel_boss_fight_vanilla_to_player_death

# Clear player inventories
clear @a[tag=player_room_player_death]

# Reset tension points
scoreboard players reset @a[tag=player_room_player_death] player_tpoints

# Give players a flash of blindness
effect give @a[tag=player_room_player_death] blindness 3 0 true

# Update player gamemodes
gamemode adventure @a[tag=player_room_player_death]

# Stop music
stopsound @a[tag=player_room_player_death] music

# Set spawnpoint
execute as @a[tag=player_room_player_death] at @s run spawnpoint @s 0 51 7

# Remove effects from players
effect clear @a[tag=player_room_player_death] resistance
effect clear @a[tag=player_room_player_death] speed
effect clear @a[tag=player_room_player_death] strength
effect clear @a[tag=player_room_player_death] weakness

# Heal players
effect give @a[team=player] instant_health 10 0 true

# Summon and initialize breaking heart prop
summon armor_stand ~ ~1.5 ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:26}}],CustomName:'"Broken Heart"',DisabledSlots:4144959,Invisible:1,Invulnerable:1,NoGravity:1,Rotation:[180.0f,0.0f],Team:immovable,Tags:["the_world_revolving","directorial","cutscene_prop","cutscene_prop_player_death","heartbreak","heartbreak_new"]}
execute as @a[tag=heartbreak_new] at @s run function theafroofdoom:entity/directorial/cutscene/prop/player_death/heartbreak/initialize

# Remove tags
tag @s remove cutscene_new
