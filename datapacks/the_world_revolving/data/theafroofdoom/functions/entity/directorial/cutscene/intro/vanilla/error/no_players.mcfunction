# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\error\no_players.mcfunction

# Print error in chat
tellraw @a [{"color": "red", "italic": "true", "translate": "error.cutscene.intro.vanilla.no_players"}]

# Reset pre-fight arena room
function theafroofdoom:room/boss_fight_vanilla/setup

# Kill self
kill @s
