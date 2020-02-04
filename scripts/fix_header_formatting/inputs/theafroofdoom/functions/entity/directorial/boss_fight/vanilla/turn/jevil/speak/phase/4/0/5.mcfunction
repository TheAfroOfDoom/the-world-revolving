# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\speak\phase\4\0\5.mcfunction

# Play voiceline
playsound theafroofdoom:jevil.voiceline.anything hostile @a ~ ~ ~ 10 1 1

# Display text based on global settings
execute if score #settings.text.location setting matches 0 run tellraw @a [{"text": "\n"},{"bold": "true", "translate": "jevil.speak.phase.4.0.5", "with": [{"bold": "true", "selector": "@e[tag=jevil]"}, {"bold": "true", "color": "green", "text": ":"}]},{"text":"\n"}]
execute if score #settings.text.location setting matches 1 run title @a actionbar [{"bold": "true", "translate": "jevil.speak.phase.4.0.5", "with": [{"bold": "true", "selector": "@e[tag=jevil]"}, {"bold": "true", "color": "green", "text": ":"}]}]
