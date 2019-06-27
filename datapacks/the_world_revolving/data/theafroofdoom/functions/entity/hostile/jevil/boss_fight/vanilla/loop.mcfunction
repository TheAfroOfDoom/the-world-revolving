# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\boss_fight\vanilla\loop.mcfunction

# Runs off Jevil every tick while the boss_fight is active

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Increment and wrap jevil_clock while Jevil is not taking damage
scoreboard players add @s jevil_clock 1
scoreboard players operation @s jevil_clock %= #33 constant

# Float Jevil based on jevil_clock score
function theafroofdoom:entity/hostile/jevil/boss_fight/vanilla/animate

# Add to damage animation counter if hitbox is hit
execute if data entity @e[limit=1,scores={group_id=0},tag=jevil_hitbox] {HurtTime:10s} run function theafroofdoom:entity/hostile/jevil/boss_fight/vanilla/hurt

# Animate Jevil based on counter
execute if score @s jevil_damage matches 0.. run function theafroofdoom:entity/hostile/jevil/boss_fight/vanilla/damage

# Restore Group IDs
function theafroofdoom:entity/group_id/restore
