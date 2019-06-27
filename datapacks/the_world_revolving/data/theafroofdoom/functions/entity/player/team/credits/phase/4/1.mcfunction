# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\phase\4\1.mcfunction

# Display title
title @s times 10 50 10
title @s subtitle {"translate": "credits.translators.lego.subtitle"}
title @s title {"translate": "credits.translators.lego"}

# Set delay until next textbox
scoreboard players set @s credits_delay 70
