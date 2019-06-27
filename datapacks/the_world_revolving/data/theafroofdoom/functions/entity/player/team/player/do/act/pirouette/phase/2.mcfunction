# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\phase\2.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a[tag=player_room_boss_fight_vanilla] [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.2"}]
execute if score #settings.text.location setting matches 1 run title @a[tag=player_room_boss_fight_vanilla] actionbar [{"text": "\uf002 "}, {"italic": true, "translate": "player.act.pirouette.phase.2"}]

# Increases damage taken by all players by 40%
execute at @a[team=player] run summon area_effect_cloud ~ ~ ~ {Duration:2,Effects:[{Amplifier:-3b,Duration:2147483647,Id:11b,ShowParticles:0b}],Particle:"block air",Radius:0.5}

# Playsound
execute at @e[tag=jevil] run playsound theafroofdoom:player.do.act.pirouette.2 player @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 4 1 1
