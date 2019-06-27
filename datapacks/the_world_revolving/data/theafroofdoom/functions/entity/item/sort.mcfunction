# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\item\sort.mcfunction

# Healing items
execute if data entity @s {Item:{id:"minecraft:apple"}} run function theafroofdoom:entity/item/healing/loop
execute if data entity @s {Item:{id:"minecraft:beetroot"}} run function theafroofdoom:entity/item/healing/loop
execute if data entity @s {Item:{id:"minecraft:cookie"}} run function theafroofdoom:entity/item/healing/loop
execute if data entity @s {Item:{id:"minecraft:potato"}} run function theafroofdoom:entity/item/healing/loop
execute if data entity @s {Item:{id:"minecraft:tropical_fish"}} run function theafroofdoom:entity/item/healing/loop

# UI items
execute if data entity @s {Item:{id:"minecraft:emerald"}} run function theafroofdoom:entity/item/ui/loop

# Selected UI items
execute if data entity @s {Item:{id:"minecraft:carrot_on_a_stick"}} run function theafroofdoom:entity/item/ui/selected/loop

# Sword items
execute if data entity @s {Item:{id:"minecraft:diamond_sword"}} run function theafroofdoom:entity/item/tools/sword/loop

# Disabled items
execute if data entity @s {Item:{id:"minecraft:diamond"}} run function theafroofdoom:entity/item/healing/disabled/loop
