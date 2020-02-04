# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\path_wisp\loop.mcfunction

# Increment clock
scoreboard players add #global.path_wisp.clock setting 1

# Wrap clock
execute if score #global.path_wisp.clock setting matches 80.. run scoreboard players remove #global.path_wisp.clock setting 80

# # # Paths
# Lobby - Top Floor
execute if score #global.path_wisp.clock setting matches 0 run particle witch 45 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 2 run particle witch 46 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 4 run particle witch 47 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 6 run particle witch 48 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 8 run particle witch 49 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 10 run particle witch 50 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 12 run particle witch 51 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 14 run particle witch 52 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 16 run particle witch 53 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]

execute if score #global.path_wisp.clock setting matches 40 run particle witch 45 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 42 run particle witch 46 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 44 run particle witch 47 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 46 run particle witch 48 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 48 run particle witch 49 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 50 run particle witch 50 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 52 run particle witch 51 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 54 run particle witch 52 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 56 run particle witch 53 122 -160 0 0 0 0 0 force @a[tag=player_room_lobby]

# Lobby - Bottom Floor
execute if score #global.path_wisp.clock setting matches 18 run particle witch 30 93 -70 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 20 run particle witch 29 93 -70 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 22 run particle witch 28 93 -70 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 24 run particle witch 27 93 -70 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 26 run particle witch 26 93 -70 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 28 run particle witch 25 93 -70 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 30 run particle witch 24 93 -70 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 32 run particle witch 23 93 -70 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 34 run particle witch 22 93 -70 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 36 run particle witch 21 93 -70 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 38 run particle witch 21 93 -69 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 40 run particle witch 21 93 -68 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 42 run particle witch 21 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 44 run particle witch 20 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 46 run particle witch 19 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 48 run particle witch 18 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 50 run particle witch 17 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 52 run particle witch 16 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 54 run particle witch 15 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 56 run particle witch 14 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 58 run particle witch 13 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 60 run particle witch 12 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 62 run particle witch 11 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 64 run particle witch 10 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 66 run particle witch 9 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 68 run particle witch 8 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 70 run particle witch 7 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 72 run particle witch 6 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 74 run particle witch 5 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 76 run particle witch 4 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 78 run particle witch 3 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 0 run particle witch 2 93 -67 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 2 run particle witch 2 93 -66 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 4 run particle witch 2 93 -65 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 6 run particle witch 2 93 -64 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 8 run particle witch 2 93 -63 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 10 run particle witch 2 93 -62 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 12 run particle witch 2 93 -61 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 14 run particle witch 2 93 -60 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 16 run particle witch 2 93 -59 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 18 run particle witch 2 93 -58 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 20 run particle witch 2 93 -57 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 22 run particle witch 2 93 -56 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 24 run particle witch 2 93 -55 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 26 run particle witch 3 93 -55 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 28 run particle witch 4 93 -55 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 30 run particle witch 5 93 -55 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 32 run particle witch 6 93 -55 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 34 run particle witch 7 93 -55 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 36 run particle witch 8 93 -55 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 38 run particle witch 9 93 -55 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 40 run particle witch 10 93 -55 0 0 0 0 0 force @a[tag=player_room_lobby]
execute if score #global.path_wisp.clock setting matches 42 run particle witch 11 93 -55 0 0 0 0 0 force @a[tag=player_room_lobby]

# Prison
execute if score #global.path_wisp.clock setting matches 44 run particle witch 11 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 46 run particle witch 10 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 48 run particle witch 9 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 50 run particle witch 8 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 52 run particle witch 7 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 54 run particle witch 6 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 56 run particle witch 5 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 58 run particle witch 4 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 60 run particle witch 3 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 62 run particle witch 2 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 64 run particle witch 1 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 66 run particle witch 0 80 -55 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 68 run particle witch 0 80 -54 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 70 run particle witch 0 80 -53 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 72 run particle witch 0 80 -52 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 74 run particle witch 0 80 -51 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 76 run particle witch 0 80 -50 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 78 run particle witch 0 80 -49 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 0 run particle witch 0 80 -48 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 2 run particle witch 0 80 -47 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 4 run particle witch 0 80 -46 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 6 run particle witch 0 80 -45 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 8 run particle witch 0 80 -44 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 10 run particle witch 0 80 -43 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 12 run particle witch 0 80 -42 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 14 run particle witch 0 80 -41 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 16 run particle witch 0 80 -40 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 18 run particle witch 0 79 -39 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 20 run particle witch 0 78 -38 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 22 run particle witch 0 77 -37 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 24 run particle witch 0 76 -36 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 26 run particle witch 0 75 -35 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 28 run particle witch 0 74 -34 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 30 run particle witch 0 73 -33 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 32 run particle witch 0 72 -32 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 34 run particle witch 0 71 -31 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 36 run particle witch 0 70 -30 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 38 run particle witch 0 69 -29 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 40 run particle witch 0 68 -28 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 42 run particle witch 0 67 -27 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 44 run particle witch 0 66 -26 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 46 run particle witch 0 65 -25 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 48 run particle witch 0 64 -24 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 50 run particle witch 0 63 -23 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 52 run particle witch 0 62 -22 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 54 run particle witch 0 61 -21 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 56 run particle witch 0 60 -20 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 58 run particle witch 0 59 -19 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 60 run particle witch 0 58 -18 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 62 run particle witch 0 57 -17 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 64 run particle witch 0 56 -16 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 66 run particle witch 0 55 -15 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 68 run particle witch 0 54 -14 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 70 run particle witch 0 53 -13 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 72 run particle witch 0 53 -12 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 74 run particle witch 0 53 -11 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 76 run particle witch 0 53 -10 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 78 run particle witch 0 53 -9 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 0 run particle witch 0 53 -8 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 2 run particle witch 0 53 -7 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 4 run particle witch 0 53 -6 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 6 run particle witch 0 53 -5 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 8 run particle witch 0 53 -4 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 10 run particle witch 0 53 -3 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 12 run particle witch 0 53 -2 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 14 run particle witch 0 53 -1 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 16 run particle witch 0 53 0 0 0 0 0 0 force @a[tag=player_room_prison]

# Team signs
execute if score #global.path_wisp.clock setting matches 0 run particle witch 2.8 53 -6 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 20 run particle witch 2.8 53 -6 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 40 run particle witch 2.8 53 -6 0 0 0 0 0 force @a[tag=player_room_prison]
execute if score #global.path_wisp.clock setting matches 60 run particle witch 2.8 53 -6 0 0 0 0 0 force @a[tag=player_room_prison]