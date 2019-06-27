# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\fix_inventory\give\quit_fix\empty.mcfunction

# Summon item in front of player so they pick it up immediately (same idea as /give)
execute at @s run summon item ~ ~ ~ {Age:-32768,Item:{Count:1,id:"minecraft:diamond"},PickupDelay:0,Tags:["the_world_revolving","directorial","tutorial_prop","tutorial_prop_advanced","item_pickup","item_pickup_advanced"]}

# Copy item data to summoned item
data modify entity @e[limit=1,tag=item_pickup_advanced] Item merge from entity @s Inventory[{Slot:8b}]
