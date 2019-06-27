# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla_quick\error\peaceful.mcfunction

# Print error in chat
tellraw @a[tag=player_room_prison_arena] [{"color": "red", "italic": "true", "translate": "error.cutscene.intro.vanilla_quick.peaceful"}]

# Reset pre-fight arena room
function theafroofdoom:room/boss_fight_vanilla/setup

# Kill self
kill @s
