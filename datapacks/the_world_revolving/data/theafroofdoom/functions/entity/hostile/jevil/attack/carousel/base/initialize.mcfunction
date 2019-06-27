# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\initialize.mcfunction

# Initializes entities who want to carousel

# Add Tag
tag @s add jevil_is_attacking_carousel

# Set scores
scoreboard players set @s attack_clock -1

# Vanish Jevil
function theafroofdoom:entity/hostile/jevil/attack/vanish/up

# Implementation ideas:
#               - 3 rows of horses rushing through/over arena, with z-offset changing sinusoidally
#                   * Hard-code number of horses or have modular - depends on how resource-intensive (likely modular)
#               - Initial z-offset is controlled by attack_rad_min, which specifies a value 0-19 that determines at what point in the sine
#               function the horses spawn at
#               - Mixed variant (skeleton horse and horse horse) will have rows offset from each other by attack_rad_min = 10
#                   * Combination attack_rate = time it takes to reach midpoint of the first two horses spawned
#                   * Combination horse and skeleton model will need 3 horses each per row to match source video
#               - Skeleton variant: determine which variables will differ
#                   * Model?                 (definitely)    | attack_model   |
#                   * Initial radius offset? (definitely)    | attack_rad_min |
#
# attack_carousel scores:
#   - constant:
#       * indicator:
#           - period = 40
#   - modular:
#       * jevil:
#           - attack_length
#           - attack_rate
#           - attack_recover
#       * indicator:
#           - attack_bullets
#               * number of COLUMNS of horses that are rotating the arena constantly
#                   - attack_bullets = 1 is one horse column revolving around the arena, the full 360 degrees
#           - attack_cycles
#               * effectively attack_len_child, length of indicator
#           - attack_model
#               * -2 = horse
#               * -1 = duck
#           - attack_rad_min
#               * sinusoidal offset (0 - (period - 1))
