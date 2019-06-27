# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\hitbox\initialize.mcfunction

# Reset bossbar
bossbar remove theafroofdoom:jevil.health

bossbar add theafroofdoom:jevil.health {"color":"dark_purple","translate":"jevil.name"}
bossbar set theafroofdoom:jevil.health color purple
bossbar set theafroofdoom:jevil.health max 102400
bossbar set theafroofdoom:jevil.health style notched_10
bossbar set theafroofdoom:jevil.health value 102400
bossbar set theafroofdoom:jevil.health visible true
function theafroofdoom:entity/hostile/jevil/hitbox/set_bossbar_visibility

# Remove tag
tag @s remove jevil_hitbox_new
