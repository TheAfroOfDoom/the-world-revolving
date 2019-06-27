# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\inventory\boss_fight\vanilla\give\ui.mcfunction

# Act.Check
replaceitem entity @s hotbar.1 emerald{CustomModelData:2,display:{Name:'{"color":"aqua","italic":"false","translate":"ui.act.check"}'},HideFlags:4,Unbreakable:1} 1

# Act.Pirouette
replaceitem entity @s hotbar.2 emerald{CustomModelData:4,display:{Lore:['{"color": "gold", "translate": "ui.act.pirouette.description"}','{"color": "yellow", "italic": "false", "translate": "ui.act.pirouette.tension_point_cost", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}]}'],Name:'{"color":"aqua","italic":"false","translate":"ui.act.pirouette"}'},HideFlags:4,Unbreakable:1} 1

# Act.Hypnosis
replaceitem entity @s hotbar.3 emerald{CustomModelData:3,display:{Lore:['{"color": "gold", "translate": "ui.act.hypnosis.description"}','{"color": "yellow", "italic": "false", "translate": "ui.act.hypnosis.tension_point_cost", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}]}'],Name:'{"color":"aqua","italic":"false","translate":"ui.act.hypnosis"}'},HideFlags:4,Unbreakable:1} 1

# Magic.Pacify
replaceitem entity @s hotbar.5 emerald{CustomModelData:10,display:{Lore:['{"color": "gold", "translate": "ui.magic.pacify.description"}','{"color": "yellow", "italic": "false", "translate": "ui.magic.pacify.tension_point_cost", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}]}'],Name:'{"color":"light_purple","italic":"false","translate":"ui.magic.pacify"}'},HideFlags:4,Unbreakable:1} 1

# Magic.Heal Prayer
replaceitem entity @s hotbar.6 emerald{CustomModelData:9,display:{Lore:['{"color": "yellow", "italic": "false", "translate": "ui.magic.heal_prayer.tension_point_cost", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}]}','{"color": "light_purple", "italic": "false", "translate": "ui.magic.heal_prayer.heal_amount", "with": [{"color": "white", "text": "\\uf003"}]}'],Name:'{"color":"light_purple","italic":"false","translate":"ui.magic.heal_prayer"}'},HideFlags:4,Unbreakable:1} 1

# Magic.Rude Buster
replaceitem entity @s hotbar.7 emerald{CustomModelData:11,display:{Lore:['{"color": "gold", "translate": "ui.magic.rude_buster.description"}','{"color": "yellow", "italic": "false", "translate": "ui.magic.rude_buster.tension_point_cost", "with": [{"color": "green", "translate": "ui.tension_points.abbreviation"}]}'],Name:'{"color":"light_purple","italic":"false","translate":"ui.magic.rude_buster"}'},HideFlags:4,Unbreakable:1} 1

# Defend
replaceitem entity @s hotbar.8 emerald{CustomModelData:6,display:{Name:'{"color":"yellow","italic":"false","translate":"ui.defend"}'},HideFlags:4,Unbreakable:1} 1
