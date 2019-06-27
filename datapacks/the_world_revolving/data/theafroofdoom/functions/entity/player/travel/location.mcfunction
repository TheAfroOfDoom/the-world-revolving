# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\location.mcfunction

# Travel to club if player enters the club
execute if entity @s[tag=player_room_lobby,x=26,y=113,z=-133,dx=19,dy=5,dz=8] run tag @s add player_travel_lobby_to_club
execute if entity @s[tag=player_room_lobby,x=34,y=113,z=-143,dx=3,dy=5,dz=9] run tag @s add player_travel_lobby_to_club

# Travel to lobby if player exits the club
execute if entity @s[tag=player_room_club] unless entity @s[x=26,y=113,z=-133,dx=19,dy=5,dz=8] unless entity @s[x=34,y=113,z=-143,dx=3,dy=5,dz=9] run tag @s add player_travel_club_to_lobby

# Travel to shop if player enters the shop
execute if entity @s[tag=player_room_lobby,x=42,y=120,z=-156,dx=3,dy=4,dz=3] run tag @s add player_travel_lobby_to_shop

# Travel to lobby if player exits the shop
execute if entity @s[tag=player_room_shop] unless entity @s[x=42,y=120,z=-156,dx=3,dy=4,dz=3] run tag @s add player_travel_shop_to_lobby
