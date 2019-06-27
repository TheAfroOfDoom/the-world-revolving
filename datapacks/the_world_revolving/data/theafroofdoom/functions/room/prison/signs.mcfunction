# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\lobby\signs.mcfunction

# Update signs if there is at least one player in the room to ensure the correct translation is displaying

# Click here to fight JEVIL!
setblock 2 52 -6 air
setblock 2 52 -6 oak_wall_sign[facing=west]{Color:"white",Text4:'{"translate":"prison.sign.team.player.4"}',Text3:'{"translate":"prison.sign.team.player.3", "with": [{"color": "dark_purple", "translate": "jevil.name"}]}',Text2:'{"translate":"prison.sign.team.player.2"}',Text1:'{"clickEvent":{"action":"run_command","value":"function theafroofdoom:entity/player/team/player/join"},"translate":"prison.sign.team.player.1"}'} replace

# Click here to spectate!
setblock 2 52 -5 air
setblock 2 52 -5 oak_wall_sign[facing=west]{Color:"white",Text4:'{"translate":"prison.sign.team.spectator.4"}',Text3:'{"translate":"prison.sign.team.spectator.3"}',Text2:'{"translate":"prison.sign.team.spectator.2"}',Text1:'{"clickEvent":{"action":"run_command","value":"function theafroofdoom:entity/player/team/spectator/join"},"translate":"prison.sign.team.spectator.1"}'} replace

# Click here for neither
setblock 2 52 -4 air
setblock 2 52 -4 oak_wall_sign[facing=west]{Color:"white",Text4:'{"translate":"prison.sign.team.leave.4"}',Text3:'{"translate":"prison.sign.team.leave.3"}',Text2:'{"translate":"prison.sign.team.leave.2"}',Text1:'{"clickEvent":{"action":"run_command","value":"function theafroofdoom:entity/player/teamless/join"},"translate":"prison.sign.team.leave.1"}'} replace
