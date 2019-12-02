# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\lobby\setup.mcfunction

# Debugging
execute if entity @a[scores={debug=1}] run say DEBUG: function theafroofdoom:room/lobby/setup

# Reset lobby decorative entities
kill @e[tag=decorative_lobby]

# # Information Boards
# Devilsknife
summon item_frame 58 123 -160 {Facing:5,Invulnerable:1,Item:{Count:1b,id:"minecraft:iron_ingot",tag:{CustomModelData:3}},ItemDropChance:0.0f,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_information_board","decorative_lobby_information_board_welcome"]}

# Join/Leave Teams
summon item_frame 54 123 -166 {Facing:3,Invulnerable:1,Item:{Count:1b,id:"minecraft:diamond_sword",tag:{CustomModelData:1}},ItemDropChance:0.0f,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_information_board","decorative_lobby_information_board_team","decorative_lobby_information_board_team_player"]}
summon item_frame 55 123 -166 {Facing:3,Invulnerable:1,Item:{Count:1b,id:"minecraft:ender_eye"},ItemDropChance:0.0f,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_information_board","decorative_lobby_information_board_team","decorative_lobby_information_board_team_spectator"]}
summon item_frame 56 123 -166 {Facing:3,Invulnerable:1,Item:{Count:1b,id:"minecraft:barrier"},ItemDropChance:0.0f,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_information_board","decorative_lobby_information_board_team","decorative_lobby_information_board_team_leave"]}

# Advanced Tutorial
summon item_frame 59 123 -154 {Facing:2,Invulnerable:1,Item:{Count:1b,id:"minecraft:iron_ingot",tag:{CustomModelData:2}},ItemDropChance:0.0f,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_information_board","decorative_lobby_information_board_tutorial","decorative_lobby_information_board_tutorial_advanced"]}

# Basic Tutorial
summon item_frame 59 123 -166 {Facing:3,Invulnerable:1,Item:{Count:1b,id:"minecraft:iron_ingot",tag:{CustomModelData:1}},ItemDropChance:0.0f,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_information_board","decorative_lobby_information_board_tutorial","decorative_lobby_information_board_tutorial_basic"]}

# Credits
summon item_frame 55 123 -154 {Facing:2,Invulnerable:1,Item:{Count:1b,id:"minecraft:book"},ItemDropChance:0.0f,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_information_board","decorative_lobby_information_board_credits"]}

# "Click here to teleport to the Prison!" stuff that spawns later
fill 58 120 -161 58 120 -159 air
scoreboard players set #global.room.lobby.teleport_to_prison setting 0

# # Spade Room
# Horse on bed
summon armor_stand 46.5 120 -166 {CustomName:'"Bed Pony"',DisabledSlots:4144959,HandItems:[{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:11}},{}],Marker:1,NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[180f],Silent:1,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_spade_room","decorative_lobby_spade_room_horse"]}

# Lancer Portraits
summon item_frame 47 122 -165 {Facing:4,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:4}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_lancer_portrait"]}
summon item_frame 47 122 -164 {Facing:4,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:4}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_lancer_portrait"]}
summon item_frame 47 122 -163 {Facing:4,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:4}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_lancer_portrait"]}

# Spade Portrait
summon item_frame 47 122 -167 {Facing:4,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:5}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_spade_portrait"]}

# Save star
summon item 29.5 120 -165.0 {Age:-32768,Invulnerable:1,Item:{Count:1,id:"minecraft:nether_star"},NoGravity:1,PickupDelay:32767,Tags:["the_world_revolving","decorative","decorative_lobby","save_star"]}

# # Diamond Room
# Summon diamond portraits
summon item_frame 20 93 -102 {Facing:4,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:2}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_diamond_portrait"]}
summon item_frame 20 93 -103 {Facing:4,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:2}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_diamond_portrait"]}

# Map on table
summon armor_stand 18.89 91.2 -103.7 {CustomName:'"Map"',CustomNameVisible:0,DisabledSlots:4144959,HandItems:[{Count:1,id:"minecraft:filled_map"},{}],NoGravity:1,Invisible:1,Invulnerable:1,Pose:{RightArm:[0f,0f,0f]},Rotation:[0.0f],Silent:1,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_diamond_room", "table_map"]}

# Stroodel
summon armor_stand 18.5 91.0 -101.5 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:39}}],CustomName:'"Stroodel"',CustomNameVisible:0,DisabledSlots:4144959,NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[180.0f],Silent:1,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_diamond_room","playtester","stroodel"]}

# TheMadHouse
summon armor_stand 18.5 91.0 -104.3 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:40}}],CustomName:'"TheMadHouse"',CustomNameVisible:0,DisabledSlots:4144959,NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[0.0f],Silent:1,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_diamond_room","playtester","themadhouse"]}

# Watertoad
summon armor_stand 20.85 91.0 -103.65 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:41}}],CustomName:'"Watertoad"',CustomNameVisible:0,DisabledSlots:4144959,NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[90.0f],Silent:1,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_diamond_room","playtester","watertoad"]}

# # Heart Room
# Summon heart portraits
summon item_frame 18 107 -94 {Facing:4,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:3}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_heart_portrait"]}
summon item_frame 18 107 -95 {Facing:4,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:3}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_heart_portrait"]}

# Chespie
summon armor_stand 13.5 105 -96.5 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:32}}],CustomName:'"Chespie"',CustomNameVisible:0,DisabledSlots:4144959,NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[61.0f],Silent:1,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_heart_room","playtester","chespie"]}

# Strangey
summon armor_stand 13.5 105 -91.5 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:38}}],CustomName:'"Strangey"',CustomNameVisible:0,DisabledSlots:4144959,NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[119.0f],Silent:1,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_heart_room","playtester","strangey"]}

# # Fourth floor
# Lancer Portraits
summon item_frame 15 115 -139 {Facing:5,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:4}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_lancer_portrait"]}
summon item_frame 9 115 -148 {Facing:5,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:4}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_lancer_portrait"]}
summon item_frame 15 115 -157 {Facing:5,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:4}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_lancer_portrait"]}

# # First Floor Hallway
# Summon lancer portraits
summon item_frame 4 94 -79 {Facing:4,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:4}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_lancer_portrait"]}
summon item_frame 4 94 -77 {Facing:4,Invulnerable:1,Item:{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:4}},ItemDropChance:0,Tags:["the_world_revolving","decorative","decorative_lobby","decorative_lobby_lancer_portrait"]}
