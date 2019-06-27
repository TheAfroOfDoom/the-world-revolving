# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\inventory\boss_fight\vanilla\give\items\healing.mcfunction

# Give healing items based on setting
# Preset:
# 0 (None)
execute if score #settings.items.healing.preset setting matches 0 run function theafroofdoom:entity/player/team/player/inventory/boss_fight/vanilla/give/items/healing/preset/0

# 1 (Low)
execute if score #settings.items.healing.preset setting matches 1 run function theafroofdoom:entity/player/team/player/inventory/boss_fight/vanilla/give/items/healing/preset/1

# 2 (Medium)
execute if score #settings.items.healing.preset setting matches 2 run function theafroofdoom:entity/player/team/player/inventory/boss_fight/vanilla/give/items/healing/preset/2

# 3 (High)
execute if score #settings.items.healing.preset setting matches 3 run function theafroofdoom:entity/player/team/player/inventory/boss_fight/vanilla/give/items/healing/preset/3
