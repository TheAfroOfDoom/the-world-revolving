# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\flavor_text.mcfunction

# Add tag to determine if flavor text has been displayed already
tag @s add boss_fight_needs_flavor_text

# Display encounter text at bfight_index == 1
execute if entity @s[tag=boss_fight_needs_flavor_text] if score @s bfight_index matches 1 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/encounter

# Display phase-specific text
execute if entity @s[tag=boss_fight_needs_flavor_text] if score @s bfight_phase matches 3 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/phase/3
execute if entity @s[tag=boss_fight_needs_flavor_text] if score @s bfight_phase matches 4 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/phase/4

# Display tired text otherwise
execute if entity @s[tag=boss_fight_needs_flavor_text] if score @s bfight_tired matches ..0 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/tired

# Display neutral text otherwise
execute if entity @s[tag=boss_fight_needs_flavor_text] run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/neutral
