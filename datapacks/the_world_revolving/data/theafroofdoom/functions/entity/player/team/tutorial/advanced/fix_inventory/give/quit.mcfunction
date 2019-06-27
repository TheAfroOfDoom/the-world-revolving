# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\fix_inventory\give\quit.mcfunction

# Kill quit variants if one was dropped
execute as @e[nbt={Item:{id:"minecraft:carrot_on_a_stick"}},type=item] run function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/give/quit/kill_variants

# Check if any UI items were replaced based on phase/subphase
execute unless data entity @s {Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b,tag:{CustomModelData:13}}]} if data entity @s {Inventory:[{Slot:8b}]} run function theafroofdoom:entity/player/team/tutorial/advanced/fix_inventory/give/quit_fix

# Clear barrier from any other slot
clear @s carrot_on_a_stick{CustomModelData:13}
clear @s carrot_on_a_stick{CustomModelData:14}
clear @s carrot_on_a_stick{CustomModelData:15}

# Replace last slot with quit
replaceitem entity @s hotbar.8 carrot_on_a_stick{CustomModelData:13,display:{Name:'{"color":"dark_red","italic":"false","translate":"ui.quit"}'},HideFlags:4} 1
