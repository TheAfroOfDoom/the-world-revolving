# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\fix_inventory\give\quit_fix\offhand.mcfunction

# Load offhand
function phi.modifyinv:load/offhand

# Store item data in temporary entity
summon item ~ ~ ~ {Age:6000,Item:{Count:1,id:"minecraft:stone"},PickupDelay:32767,Tags:["the_world_revolving","credits","quit_fix_offhand","quit_fix_offhand_basic"]}

# Put item in hotbar.8 into temporary entity as storage
data modify entity @e[limit=1,tag=quit_fix_offhand_basic] Item merge from entity @s Inventory[{Slot:8b}]

# Remove Slot data
data remove entity @e[limit=1,tag=quit_fix_offhand_basic] Item.Slot

# Store Item data in shulker box
data modify block -30000000 0 1602 Items[{tag:{display:{Name:'{"color":"dark_red","italic":"false","translate":"ui.quit"}'}}}] merge from entity @e[limit=1,tag=quit_fix_offhand_basic] Item

# Remove tag data if original Item did not have any
execute unless data entity @s Inventory[{Slot:8b}].tag.CustomModelData run data remove block -30000000 0 1602 Items[{tag:{display:{Name:'{"color":"dark_red","italic":"false","translate":"ui.quit"}'}}}].tag.CustomModelData
execute unless data entity @s Inventory[{Slot:8b}].tag.HideTags run data remove block -30000000 0 1602 Items[{tag:{display:{Name:'{"color":"dark_red","italic":"false","translate":"ui.quit"}'}}}].tag.HideTags
execute unless data entity @s Inventory[{Slot:8b}].tag.display run data remove block -30000000 0 1602 Items[{tag:{display:{Name:'{"color":"dark_red","italic":"false","translate":"ui.quit"}'}}}].tag.display

# Kill temporary entity
kill @e[tag=quit_fix_offhand_basic]

# Apply new offhand
function phi.modifyinv:apply/offhand
