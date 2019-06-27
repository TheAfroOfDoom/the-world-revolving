# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\indicator\loop.mcfunction

# Runs every tick off entities tagged "attack_indicator_devilsknife"
# afro.math_0 keeps track of how many cycles remain
# afro.math_1 is a bool that keeps track of whether or not attack_charge_up has been hit initially or not

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Increment attack_clock (0 - (until attack_cycles = 0))
scoreboard players add @s attack_clock 1

# Begin cycling at {attack_clock=attack_charge_up} if the devilsknife bullets are still inactive
execute if score @s afro.math_1 matches 0 if score @s attack_clock = @s attack_charge_up run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/indicator/shoot

# Playsound for when all scythes clash in the middle
# See if (attack_clock - 13) % 27 = 0
scoreboard players operation @s afro.math_2 = @s attack_clock
scoreboard players remove @s afro.math_2 13
scoreboard players operation @s afro.math_2 %= #27 constant
execute if score @s afro.math_1 matches 1 if score @s afro.math_2 matches 0 run playsound theafroofdoom:jevil.attack.devilsknife.clash hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 5.0 1.0 1.0

# Each cycle takes (4/3) seconds = 27 ticks
# See if attack_clock % 27 = 0
scoreboard players operation @s afro.math_2 = @s attack_clock
scoreboard players operation @s afro.math_2 %= #27 constant
execute if score @s afro.math_1 matches 1 if score @s afro.math_2 matches 0 unless score @s attack_clock matches 0 run scoreboard players remove @s afro.math_0 1

# If attack_diff = 1, include smiling variant and summon the red knife every 30 ticks
execute if score @s attack_diff matches 1 run scoreboard players operation @s afro.math_2 = @s attack_clock
execute if score @s attack_diff matches 1 run scoreboard players operation @s afro.math_2 %= #30 constant
execute if score @s attack_diff matches 1 if score @s afro.math_2 matches 0 unless score @s attack_clock matches 0 run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/indicator/summon_red

# Terminate at afro.math_0 (cycles remaining) = 0
execute if score @s afro.math_0 matches 0 run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/indicator/condition/loop/afro.math_0/0

# Restore Group IDs
function theafroofdoom:entity/group_id/restore