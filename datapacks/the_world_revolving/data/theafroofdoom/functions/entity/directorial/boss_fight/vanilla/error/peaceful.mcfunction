# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\error\peaceful.mcfunction

# Print error in chat
tellraw @a[tag=player_room_boss_fight_vanilla] [{"color": "red", "italic": "true", "translate": "error.boss_fight.vanilla.peaceful"}]

# Reset all players who were in the arena
execute as @a[tag=player_room_boss_fight_vanilla] at @s run function theafroofdoom:entity/player/reset

# Reset own scores so rest of loop doesn't run
scoreboard players reset @s

# Kill boss_fight and hostile entities
kill @e[tag=boss_fight]
kill @e[tag=hostile]

# Remove bossbar
bossbar remove theafroofdoom:jevil.health
