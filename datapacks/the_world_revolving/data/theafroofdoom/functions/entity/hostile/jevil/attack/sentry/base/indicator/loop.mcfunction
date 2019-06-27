# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\indicator\loop.mcfunction

# Runs every tick off entities tagged "attack_indicator_sentry"

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Increment attack_clock
scoreboard players add @s attack_clock 1

# Face closest player
teleport @s ~ ~ ~ facing entity @p[team=player]

# Summon Jevil phantom based on variant for visual of him warping
execute if score @s attack_clock matches 1 if score @s attack_variant matches -1 at @s run function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/indicator/summon_phantom

# Summon bullets
execute if score @s attack_clock matches 1 run function theafroofdoom:entity/hostile/jevil/attack/sentry/base/indicator/summon_bullets

# Shoot and terminate when Jevil phantom reaches destination
execute if score @s attack_clock = @s attack_charge_up run function theafroofdoom:entity/hostile/jevil/attack/sentry/base/indicator/shoot

# Restore Group IDs
function theafroofdoom:entity/group_id/restore
