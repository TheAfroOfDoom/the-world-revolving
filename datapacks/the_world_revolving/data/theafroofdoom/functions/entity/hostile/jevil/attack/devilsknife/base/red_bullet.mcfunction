# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\red_bullet.mcfunction

# Runs every tick off entities tagged "attack_bullet_red_devilsknife"

# Increment attack_clock (1 - arena_edge)
scoreboard players add @s attack_clock 1

# Summon-in animation while afro.math_0 = 0
execute unless score @s afro.math_0 matches 1 if score @s attack_clock matches 15 run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/condition/red_bullet/afro.math_0/0/attack_clock/15

# Teleport forward while afro.math_0 = 1
execute if score @s afro.math_0 matches 1 run teleport ^ ^ ^4.0

# Terminate at attack_clock = 60
execute if score @s afro.math_0 matches 1 if score @s attack_clock matches 60 run kill @s
