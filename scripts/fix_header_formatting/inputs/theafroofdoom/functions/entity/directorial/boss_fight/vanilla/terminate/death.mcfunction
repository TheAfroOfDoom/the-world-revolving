# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\terminate\death.mcfunction

# Run if Jevil has ran out of health

# Schedule Jevil-death cutscene director for 120 ticks later
schedule function theafroofdoom:entity/directorial/cutscene/death/vanilla/summon_cutscene 120t

# Run base boss fight vanilla terminate function
function theafroofdoom:entity/directorial/boss_fight/vanilla/terminate/base
