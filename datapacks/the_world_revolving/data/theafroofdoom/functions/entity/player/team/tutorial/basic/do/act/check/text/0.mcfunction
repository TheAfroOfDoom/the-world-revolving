# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\check\text\0.mcfunction

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @s [{"text":"\uf002 "},{"translate": "player.act.check"}]
execute if score #settings.text.location setting matches 1 run title @s actionbar [{"text":"\uf002 "},{"translate": "player.act.check"}]
