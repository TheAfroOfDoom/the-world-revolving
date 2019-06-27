# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\phase\5\0.mcfunction

# Display title
title @s times 20 60 20
title @s subtitle {"translate": "credits.testers.subtitle"}
title @s title {"translate": "credits.testers"}

# Set delay until next textbox
scoreboard players set @s credits_delay 100
