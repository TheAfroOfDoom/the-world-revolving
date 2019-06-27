# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\terminate.mcfunction

# Display swipe particle in front of all players
execute as @a[team=player] at @s anchored eyes run particle sweep_attack ^ ^ ^0.5

# Display flash in front of all players and spectators
execute as @a[team=player] at @s anchored eyes run particle flash ^ ^ ^0.5
execute as @a[team=spectator] at @s anchored eyes run particle flash ^ ^ ^0.5
# (and in the same spot in the active arena)
execute as @a[team=player] at @s positioned ~ ~ ~136 anchored eyes run particle flash ^ ^ ^0.5
execute as @a[team=spectator] at @s positioned ~ ~ ~136 anchored eyes run particle flash ^ ^ ^0.5

# Playsound of battle starting
playsound theafroofdoom:battle.start player @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 1

# Change Jevil's model to laughing (fast)
data modify entity @e[limit=1,tag=lobby_jevil] ArmorItems[3].tag.CustomModelData set value 19

# Schedule boss_fight to summon 10 ticks later
schedule function theafroofdoom:entity/directorial/boss_fight/vanilla/summon_boss_fight 10t

# Kill self and any props (if they still exist for some reason)
kill @e[tag=cutscene_prop]
kill @s
