# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_carousel_new"

# afro.math_0 = ticks between bullet summoning (bullets are equidistant in a 360 degree rotation)
# Set scores
scoreboard players set @s attack_clock -1

# NOTE(jordan): Adjust this value below if I decide to change the period
scoreboard players set @s afro.math_0 80
scoreboard players operation @s afro.math_0 /= @s attack_bullets

# Summon summoner
summon area_effect_cloud ~-33 ~ ~ {CustomName:"\"Carousel Summoner Horse\"",CustomNameVisible:0,Duration:2147483627,Particle:"block air",ReapplicationDelay:1,Tags:["the_world_revolving","groupable","needs_group_id","hostile","attack","attack_summoner","attack_summoner_carousel","attack_summoner_carousel_new"]}

# Initialize summoner based on variant
execute if score @s attack_variant matches -2 as @e[tag=attack_summoner_carousel_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/carousel/horse/indicator/summoner/initialize
execute if score @s attack_variant matches -1 as @e[tag=attack_summoner_carousel_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/carousel/duck/indicator/summoner/initialize

# Copy group ID to summoners
function theafroofdoom:entity/group_id/copy

# Remove Tags
tag @s remove attack_indicator_carousel_new
