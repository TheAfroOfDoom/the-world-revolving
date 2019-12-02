# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\shop\setup.mcfunction

# Debugging
execute if entity @a[scores={debug=1}] run say DEBUG: function theafroofdoom:room/lobby/setup

# Reset shop decorative entities
kill @e[tag=decorative_shop]

# Axe
summon armor_stand 46.9 120 -154 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:diamond_axe"}],CustomName:'"Shop Axe"',DisabledSlots:4144959,Marker:1,NoGravity:1,Invulnerable:1,Invisible:1,Rotation:[90f],Silent:1,Tags:["the_world_revolving","decorative","decorative_shop","decorative_shop_axe"]}

# Stew
summon armor_stand 46.9 119 -154 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:rabbit_stew"}],CustomName:'"Shop Stew"',DisabledSlots:4144959,Marker:1,NoGravity:1,Invulnerable:1,Invisible:1,Rotation:[270f],Silent:1,Tags:["the_world_revolving","decorative","decorative_shop","decorative_shop_stew"]}

# TheAfroOfDoom
summon armor_stand 46 121.065 -156 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_pickaxe",tag:{CustomModelData:6}}],CustomName:'"TheAfroOfDoom"',DisabledSlots:4144959,Marker:1,NoGravity:1,Invulnerable:1,Invisible:1,Silent:1,Tags:["the_world_revolving","decorative","decorative_shop","decorative_shop_theafroofdoom","decorative_shop_theafroofdoom_new"]}
execute as @e[tag=decorative_shop_theafroofdoom_new] at @s run function theafroofdoom:entity/decorative/theafroofdoom/initialize
