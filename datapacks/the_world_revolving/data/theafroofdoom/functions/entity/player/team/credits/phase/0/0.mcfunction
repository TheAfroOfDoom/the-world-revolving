# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\phase\0\0.mcfunction

# Display title
title @s times 20 100 20
title @s subtitle ""
title @s title {"color": "light_purple", "translate": "credits.intro.0"}

# Set delay until next textbox
scoreboard players set @s credits_delay 140
