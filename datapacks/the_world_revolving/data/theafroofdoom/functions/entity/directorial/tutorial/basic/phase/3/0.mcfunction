# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\phase\3\0.mcfunction

# Display section header
tellraw @a[team=tutorial_basic] [{"text": "\n"}, {"color": "yellow", "translate": "tutorial.basic.inventory", "with": [{"color":"green", "text":"= = = ["}, {"color":"green", "text":"] = = ="}]}]

# Display text
tellraw @a[team=tutorial_basic] [{"color": "yellow", "translate": "tutorial.basic.prefix", "with": [{"color":"green", "text":"["}, {"color":"green", "text":"]"}]}, {"color": "white", "translate": "tutorial.basic.inventory.0"}]

# Set delay until next textbox
scoreboard players set @s tut_delay 100

# Terminate training_dummy's attack in case it was manually ended early
execute as @e[tag=training_dummy_is_attacking_shoot_example,tag=training_dummy_basic] at @s run function theafroofdoom:entity/directorial/tutorial/prop/basic/training_dummy/attack/shoot/example/terminate

# Heal player
effect give @a[team=tutorial_basic] instant_health 10 0 true

# Give UI items
# Sword
give @a[team=tutorial_basic] diamond{CustomModelData:19,display:{Name:'{"color":"red","italic":"false","translate":"ui.fight"}'},HideFlags:6,Unbreakable:1} 1

# Magic.Pacify
give @a[team=tutorial_basic] diamond{CustomModelData:16,display:{Lore:['{"color": "gold", "translate": "ui.magic.pacify.description"}','{"color": "yellow", "italic": "false", "translate": "ui.magic.pacify.tension_point_cost", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}]}'],Name:'{"color":"light_purple","italic":"false","translate":"ui.magic.pacify"}'},HideFlags:4,Unbreakable:1} 1

# Tropical Fish - Dark Candy
give @a[team=tutorial_basic] diamond{CustomModelData:3,display:{Lore:['{"color": "gold", "translate": "item.healing.dark_candy.description.0"}','{"color": "gold", "translate": "item.healing.dark_candy.description.1"}','{"color": "light_purple", "italic": "false", "translate": "item.healing.dark_candy.heal_amount", "with": [{"color": "white", "text": "\\uf003"}]}'],Name:'{"color":"green","italic":"false","translate":"item.healing.dark_candy"}'}} 1

# Defend
give @a[team=tutorial_basic] diamond{CustomModelData:12,display:{Name:'{"color":"yellow","italic":"false","translate":"ui.defend"}'},HideFlags:4,Unbreakable:1} 1
