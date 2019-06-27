# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\loop.mcfunction

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Teleport hitbox next to self
teleport @e[scores={group_id=0},tag=training_dummy_hitbox] ~ ~ ~

# Restore Group IDs
function theafroofdoom:entity/group_id/restore
