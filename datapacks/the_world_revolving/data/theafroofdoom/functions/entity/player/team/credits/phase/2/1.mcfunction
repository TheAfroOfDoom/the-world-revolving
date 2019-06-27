# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\phase\2\1.mcfunction

# Display title
title @s times 10 60 10
title @s subtitle {"translate": "credits.resources.mcc.subtitle"}
title @s title {"translate": "credits.resources.mcc"}

# Set delay until next textbox
scoreboard players set @s credits_delay 80
