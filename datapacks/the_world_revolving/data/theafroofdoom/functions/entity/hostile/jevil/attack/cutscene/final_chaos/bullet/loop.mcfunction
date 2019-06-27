# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\bullet\loop.mcfunction

# Setup Bullet ID System
function theafroofdoom:entity/hostile/bullet_id/setup

# Increment attack_clock
scoreboard players add @s attack_clock 1

# Teleport self downwards along hard-coded path (mimicing gravity)
execute if score @s attack_clock matches 0 run teleport @s ~ ~0 ~
execute if score @s attack_clock matches 1 run teleport @s ~ ~-0.07333333333 ~
execute if score @s attack_clock matches 2 run teleport @s ~ ~-0.1466666667 ~
execute if score @s attack_clock matches 3 run teleport @s ~ ~-0.22 ~
execute if score @s attack_clock matches 4 run teleport @s ~ ~-0.2933333333 ~
execute if score @s attack_clock matches 5 run teleport @s ~ ~-0.3666666667 ~
execute if score @s attack_clock matches 6 run teleport @s ~ ~-0.44 ~
execute if score @s attack_clock matches 7 run teleport @s ~ ~-0.5133333333 ~
execute if score @s attack_clock matches 8 run teleport @s ~ ~-0.5866666667 ~
execute if score @s attack_clock matches 9 run teleport @s ~ ~-0.66 ~
execute if score @s attack_clock matches 10 run teleport @s ~ ~-0.7333333333 ~
execute if score @s attack_clock matches 11 run teleport @s ~ ~-0.8066666667 ~
execute if score @s attack_clock matches 12 run teleport @s ~ ~-0.88 ~
execute if score @s attack_clock matches 13 run teleport @s ~ ~-0.9533333333 ~
execute if score @s attack_clock matches 14 run teleport @s ~ ~-1.026666667 ~
execute if score @s attack_clock matches 15 run teleport @s ~ ~-1.1 ~
execute if score @s attack_clock matches 16 run teleport @s ~ ~-1.173333333 ~
execute if score @s attack_clock matches 17 run teleport @s ~ ~-1.246666667 ~
execute if score @s attack_clock matches 18 run teleport @s ~ ~-1.32 ~
execute if score @s attack_clock matches 19 run teleport @s ~ ~-1.393333333 ~
execute if score @s attack_clock matches 20 run teleport @s ~ ~-1.466666667 ~
execute if score @s attack_clock matches 21 run teleport @s ~ ~-1.54 ~
execute if score @s attack_clock matches 22 run teleport @s ~ ~-1.613333333 ~
execute if score @s attack_clock matches 23 run teleport @s ~ ~-1.686666667 ~
execute if score @s attack_clock matches 24 run teleport @s ~ ~-1.76 ~
execute if score @s attack_clock matches 25 run teleport @s ~ ~-1.833333333 ~
execute if score @s attack_clock matches 26 run teleport @s ~ ~-1.906666667 ~
execute if score @s attack_clock matches 27 run teleport @s ~ ~-1.98 ~
execute if score @s attack_clock matches 28 run teleport @s ~ ~-2.053333333 ~
execute if score @s attack_clock matches 29 run teleport @s ~ ~-2.126666667 ~

# Spin scythe
execute at @s run teleport @s ~ ~ ~ ~12 ~

# Summon explosion and terminate when land (hard-coded timing)
execute if score @s attack_clock matches 30 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/bullet/terminate

# Restore Bullet IDs
function theafroofdoom:entity/hostile/bullet_id/restore
