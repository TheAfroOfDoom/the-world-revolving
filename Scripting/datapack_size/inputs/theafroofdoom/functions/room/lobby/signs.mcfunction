# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\lobby\signs.mcfunction

# Update signs if there is at least one player in the room to ensure the correct translation is displaying

# Welcome to...
setblock 58 122 -159 air
setblock 58 122 -159 oak_wall_sign[facing=east]{Color:"white",Text4:'{"bold": "true", "translate":"lobby.sign.info.58.122.-159.4"}',Text3:'{"bold": "true", "translate":"lobby.sign.info.58.122.-159.3"}',Text2:'{"bold": "true", "translate":"lobby.sign.info.58.122.-159.2"}',Text1:'{"bold": "true", "translate":"lobby.sign.info.58.122.-159.1"}'} replace

# THE WORLD REVOLVING
setblock 58 122 -160 air
setblock 58 122 -160 oak_wall_sign[facing=east]{Color:"white",Text4:'{"bold": "true", "translate":"lobby.sign.info.58.122.-160.4"}',Text3:'{"bold": "true", "translate":"lobby.sign.info.58.122.-160.3"}',Text2:'{"bold": "true", "translate":"lobby.sign.info.58.122.-160.2"}',Text1:'{"bold": "true", "translate":"lobby.sign.info.58.122.-160.1"}'} replace

# ...made by TheAfroOfDoom
setblock 58 122 -161 air
setblock 58 122 -161 oak_wall_sign[facing=east]{Color:"white",Text4:'{"bold": "true", "translate":"lobby.sign.info.58.122.-161.4"}',Text3:'{"bold": "true", "translate":"lobby.sign.info.58.122.-161.3"}',Text2:'{"bold": "true", "translate":"lobby.sign.info.58.122.-161.2"}',Text1:'{"bold": "true", "translate":"lobby.sign.info.58.122.-161.1"}'} replace

# Jevil in Minecraft
setblock 58 121 -160 air
setblock 58 121 -160 oak_wall_sign[facing=east]{Color:"white",Text4:'{"bold": "true", "italic": "true", "translate":"lobby.sign.info.58.121.-160.4"}',Text3:'{"bold": "true", "translate":"lobby.sign.info.58.121.-160.3"}',Text2:'{"bold": "true", "translate":"lobby.sign.info.58.121.-160.2"}',Text1:'{"bold": "true", "translate":"lobby.sign.info.58.121.-160.1"}'} replace

# Click here to fight JEVIL!
setblock 54 122 -166 air
setblock 54 122 -166 oak_wall_sign[facing=south]{Color:"white",Text4:'{"translate":"prison.sign.team.player.4"}',Text3:'{"translate":"prison.sign.team.player.3", "with": [{"color": "dark_purple", "translate": "jevil.name"}]}',Text2:'{"translate":"prison.sign.team.player.2"}',Text1:'{"clickEvent":{"action":"run_command","value":"function theafroofdoom:entity/player/team/player/join"},"translate":"prison.sign.team.player.1"}'} replace

# Click here to spectate!
setblock 55 122 -166 air
setblock 55 122 -166 oak_wall_sign[facing=south]{Color:"white",Text4:'{"translate":"prison.sign.team.spectator.4"}',Text3:'{"translate":"prison.sign.team.spectator.3"}',Text2:'{"translate":"prison.sign.team.spectator.2"}',Text1:'{"clickEvent":{"action":"run_command","value":"function theafroofdoom:entity/player/team/spectator/join"},"translate":"prison.sign.team.spectator.1"}'} replace

# Click here for neither
setblock 56 122 -166 air
setblock 56 122 -166 oak_wall_sign[facing=south]{Color:"white",Text4:'{"translate":"prison.sign.team.leave.4"}',Text3:'{"translate":"prison.sign.team.leave.3"}',Text2:'{"translate":"prison.sign.team.leave.2"}',Text1:'{"clickEvent":{"action":"run_command","value":"function theafroofdoom:entity/player/teamless/join"},"translate":"prison.sign.team.leave.1"}'} replace

# [ TUTORIAL ] ADVANCED
setblock 59 122 -154 air
setblock 59 122 -154 oak_wall_sign[facing=north]{Color:"white",Text4:'{"bold": "true", "translate":"lobby.sign.tutorial.advanced.4"}',Text3:'{"bold": "true", "color": "aqua", "translate":"lobby.sign.tutorial.advanced.3"}',Text2:'{"bold": "true", "translate":"lobby.sign.tutorial.advanced.2"}',Text1:'{"clickEvent":{"action":"run_command","value":"function theafroofdoom:entity/player/team/tutorial/advanced/join"},"bold": "true", "translate":"lobby.sign.tutorial.advanced.1"}'} replace

# [ TUTORIAL ] BASIC
setblock 59 122 -166 air
setblock 59 122 -166 oak_wall_sign[facing=south]{Color:"white",Text4:'{"bold": "true", "translate":"lobby.sign.tutorial.basic.4"}',Text3:'{"bold": "true", "color": "yellow", "translate":"lobby.sign.tutorial.basic.3"}',Text2:'{"bold": "true", "translate":"lobby.sign.tutorial.basic.2"}',Text1:'{"clickEvent":{"action":"run_command","value":"function theafroofdoom:entity/player/team/tutorial/basic/join"},"bold": "true", "translate":"lobby.sign.tutorial.basic.1"}'} replace

# [ CREDITS ]
setblock 55 122 -154 air
setblock 55 122 -154 oak_wall_sign[facing=north]{Color:"white",Text4:'{"bold": "true", "translate":"lobby.sign.credits.4"}',Text3:'{"bold": "true", "translate":"lobby.sign.credits.3"}',Text2:'{"bold": "true", "translate":"lobby.sign.credits.2"}',Text1:'{"clickEvent":{"action":"run_command","value":"function theafroofdoom:entity/player/team/credits/join"},"bold":"true","translate":"lobby.sign.credits.1"}'} replace

# Click here to teleport to the Prison!
# (sign that spawns later)
execute if score #global.room.lobby.teleport_to_prison setting matches 1 unless block 58 120 -161 player_wall_head[facing=east] run setblock 58 120 -161 player_wall_head[facing=east]{Owner:{Id:"5fecc571-bcbb-4aaa-b53c-b5d8715dbe37",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzdhZWU5YTc1YmYwZGY3ODk3MTgzMDE1Y2NhMGIyYTdkNzU1YzYzMzg4ZmYwMTc1MmQ1ZjQ0MTlmYzY0NSJ9fX0="}]}}} replace
execute if score #global.room.lobby.teleport_to_prison setting matches 1 run setblock 58 120 -160 air
execute if score #global.room.lobby.teleport_to_prison setting matches 1 run setblock 58 120 -160 oak_wall_sign[facing=east]{Color:"white",Text4:'{"bold": "true", "translate":"lobby.sign.info.58.120.-160.4"}',Text3:'{"bold": "true", "translate":"lobby.sign.info.58.120.-160.3"}',Text2:'{"bold": "true", "translate":"lobby.sign.info.58.120.-160.2"}',Text1:'{"clickEvent":{"action":"run_command","value":"tag @s add player_travel_lobby_to_prison"},"bold": "true", "translate":"lobby.sign.info.58.120.-160.1"}'} replace
execute if score #global.room.lobby.teleport_to_prison setting matches 1 unless block 58 120 -159 player_wall_head[facing=east] run setblock 58 120 -159 player_wall_head[facing=east]{Owner:{Id:"79f13daf-4884-40ab-8e35-95e472463321",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjgyYWQxYjljYjRkZDIxMjU5YzBkNzVhYTMxNWZmMzg5YzNjZWY3NTJiZTM5NDkzMzgxNjRiYWM4NGE5NmUifX19"}]}}} replace

# Elevator to bottom floor
setblock 53 122 -158 air
setblock 53 122 -158 oak_wall_sign[facing=west]{Color: "white",Text4: '{"bold":true,"translate":"lobby.sign.elevator.top.4"}',Text3: '{"bold":true,"translate":"lobby.sign.elevator.top.3"}',Text2: '{"bold":true,"translate":"lobby.sign.elevator.top.2"}',Text1: '{"bold":true,"translate":"lobby.sign.elevator.top.1"}'} replace

# Castle Bathroom Royal Flush
setblock 56 100 -116 air
setblock 56 100 -116 oak_wall_sign[facing=east]{Color: "white",Text4: '{"bold":true,"translate":"lobby.sign.bathroom.4"}',Text3: '{"bold":true,"translate":"lobby.sign.bathroom.3"}',Text2: '{"bold":true,"translate":"lobby.sign.bathroom.2"}',Text1: '{"bold":true,"translate":"lobby.sign.bathroom.1"}'} replace

# Also run shop signs since we can see them from the lobby
function theafroofdoom:room/shop/signs
