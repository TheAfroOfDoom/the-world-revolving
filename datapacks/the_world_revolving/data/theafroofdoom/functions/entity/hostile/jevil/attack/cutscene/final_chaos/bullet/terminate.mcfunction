# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\bullet\terminate.mcfunction

# Terminate bullets tagged "attack_bullet_cutscene_final_chaos"

# Summon explosion column
function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/bullet/summon_explosion

# Playsound of explosion
playsound theafroofdoom:jevil.attack.cutscene.final_chaos.explosion hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 3 1

# Run base bullet terminate function
function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/bullet/terminate
