# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\speak\1\2.mcfunction

# Play voiceline
playsound theafroofdoom:jevil.voiceline.laugh.0 hostile @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 1

# Update Jevil's model to laughing (fast)
data modify entity @e[limit=1,tag=lobby_jevil] ArmorItems[3].tag.CustomModelData set value 19

# Summon Devilsknives that come crashing down towards players
execute at @a[team=player] anchored eyes positioned ^ ^ ^0.5 run summon armor_stand ~ 32 ~ {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:21}}],CustomName:'"Intro Cutscene Devilsknife"',DisabledSlots:4144959,Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1,Team:jevil,Tags:["the_world_revolving","directorial","cutscene_prop","cutscene_prop_intro","cutscene_prop_intro_vanilla","cutscene_prop_intro_vanilla_devilsknife"],Passengers:[{Duration:60,Effects:[{Amplifier:0,Duration:180,Id:9,ShowParticles:0b,ShowIcon:1b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:1.5,ReapplicationDelay:1,Tags:["the_world_revolving","directorial","cutscene_prop","cutscene_prop_intro","cutscene_prop_intro_vanilla","cutscene_prop_intro_vanilla_nauseator"]}]}

# Playsound of devilsknives summoning
playsound theafroofdoom:jevil.intro.devilsknife hostile @a[tag=player_room_prison_arena] ~ 32 ~ 10 1 1

# Display text (no text here)
# tellraw @a[tag=player_room_prison_arena] [{"translate": "jevil.speak.intro.1.2", "with": [{"bold": "true", "color": "dark_purple", "translate": "jevil.name"}, {"bold": "true", "color": "green", "text": ":"}]}]

# Set delay until next textbox
scoreboard players set @s cutscn_text_time 50
