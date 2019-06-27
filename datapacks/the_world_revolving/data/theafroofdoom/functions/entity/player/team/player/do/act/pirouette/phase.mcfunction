# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\phase.mcfunction

# Copy pirouette phase to local score for efficiency
scoreboard players operation @s afro.math_0 = @e[limit=1,tag=boss_fight] bfight_pir_phase

# Wrap pirouette phase to be from (0 - 8)
scoreboard players operation @s afro.math_0 %= #9 constant

# Pirouette phase:
# 0
execute if score @s afro.math_0 matches 0 run function theafroofdoom:entity/player/team/player/do/act/pirouette/phase/0
# 1
execute if score @s afro.math_0 matches 1 run function theafroofdoom:entity/player/team/player/do/act/pirouette/phase/1
# 2
execute if score @s afro.math_0 matches 2 run function theafroofdoom:entity/player/team/player/do/act/pirouette/phase/2
# 3
execute if score @s afro.math_0 matches 3 run function theafroofdoom:entity/player/team/player/do/act/pirouette/phase/3
# 4
execute if score @s afro.math_0 matches 4 run function theafroofdoom:entity/player/team/player/do/act/pirouette/phase/4
# 5
execute if score @s afro.math_0 matches 5 run function theafroofdoom:entity/player/team/player/do/act/pirouette/phase/5
# 6
execute if score @s afro.math_0 matches 6 run function theafroofdoom:entity/player/team/player/do/act/pirouette/phase/6
# 7
execute if score @s afro.math_0 matches 7 run function theafroofdoom:entity/player/team/player/do/act/pirouette/phase/7
# 8
execute if score @s afro.math_0 matches 8 run function theafroofdoom:entity/player/team/player/do/act/pirouette/phase/8

# Increment pirouette phase
scoreboard players add @s afro.math_0 1

# Give updated pirouette phase to boss_fight director
# This also wraps bfight_pir_phase inherently, just in case anything else makes it 9+
scoreboard players operation @e[tag=boss_fight] bfight_pir_phase = @s afro.math_0
