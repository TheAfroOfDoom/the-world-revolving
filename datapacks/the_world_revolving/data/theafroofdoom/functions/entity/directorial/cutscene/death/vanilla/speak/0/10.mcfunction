# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\death\vanilla\speak\0\10.mcfunction

# Display text (no text)
# tellraw @a[tag=player_room_prison_arena] [{"translate": "jevil.speak.death.0.10", "with": [{"bold": "true", "color": "dark_purple", "translate": "jevil.name"}, {"bold": "true", "color": "green", "text": ":"}]}]

# Set scores
scoreboard players set @e[tag=lobby_jevil] attack_model 5

# Vanish devilsknife
execute as @e[tag=lobby_jevil] run function theafroofdoom:entity/hostile/jevil/attack/vanish/devilsknife/down

# Set delay until next textbox
scoreboard players set @s cutscn_text_time 50
