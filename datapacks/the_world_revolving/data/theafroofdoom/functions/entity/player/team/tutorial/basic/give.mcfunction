# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\give.mcfunction

# Clear player inventory
clear

# Sword
#replaceitem entity @s hotbar.0 diamond{CustomModelData:19,display:{Name:'{"color":"red","italic":"false","translate":"ui.fight"}'},HideFlags:6,Unbreakable:1} 1

# Act.Check
#replaceitem entity @s hotbar.1 diamond{CustomModelData:8,display:{Name:'{"color":"aqua","italic":"false","translate":"ui.act.check"}'},HideFlags:4,Unbreakable:1} 1

# Magic.Pacify
#replaceitem entity @s hotbar.2 diamond{CustomModelData:16,display:{Lore:['{"color": "gold", "translate": "ui.magic.pacify.description"}','{"color": "yellow", "italic": "false", "translate": "ui.magic.pacify.tension_point_cost", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}]}'],Name:'{"color":"light_purple","italic":"false","translate":"ui.magic.pacify"}'},HideFlags:4,Unbreakable:1} 1

# Tropical Fish - Dark Candy
#replaceitem entity @s hotbar.3 diamond{CustomModelData:3,display:{Lore:['{"color": "gold", "translate": "item.healing.dark_candy.description.0"}','{"color": "gold", "translate": "item.healing.dark_candy.description.1"}','{"color": "light_purple", "italic": "false", "translate": "item.healing.dark_candy.heal_amount", "with": [{"color": "white", "text": "\\uf003"}]}'],Name:'{"color":"green","italic":"false","translate":"item.healing.dark_candy"}'}} 1

# Defend
#replaceitem entity @s hotbar.4 diamond{CustomModelData:12,display:{Name:'{"color":"yellow","italic":"false","translate":"ui.defend"}'},HideFlags:4,Unbreakable:1} 1

# Last slot is always a Barrier to quit
#replaceitem entity @s hotbar.8 barrier{display:{Name:'{"color":"dark_red","italic":"false","translate":"ui.quit"}'},HideFlags:4} 1
