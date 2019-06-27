# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\phase\4\summon_pirouette_parrot.mcfunction

# Summon a parrot with random:
#   - Color
#   - Direction
#   - Location
#   - Speed

# Summon and initialize pirouette parrot
summon parrot ~ ~30 ~ {CustomName:"\"Pirouette Parrot\"",DeathLootTable:"empty",Invulnerable:1,NoAI:1,NoGravity:0,PersistenceRequired:1,Silent:1,Team:jevil,Tags:["the_world_revolving","miscellaneous","pirouette_parrot","pirouette_parrot_new"]}
execute as @e[tag=pirouette_parrot_new] at @s run function theafroofdoom:entity/miscellaneous/pirouette_parrot/initialize
