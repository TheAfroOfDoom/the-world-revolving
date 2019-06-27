# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\sort.mcfunction

# attacks
execute if entity @s[tag=attack] run function theafroofdoom:entity/hostile/jevil/attack/sort

# jevil
execute if entity @s[tag=jevil] run function theafroofdoom:entity/hostile/jevil/sort

# jevil hitbox
execute if entity @s[tag=jevil_hitbox] run function theafroofdoom:entity/hostile/jevil/hitbox/loop

# jevil phantoms
execute if entity @s[tag=jevil_phantom] run function theafroofdoom:entity/hostile/jevil/sort_phantom

# devilsknife phantoms
execute if entity @s[tag=jevil_phantom_devilsknife] run function theafroofdoom:entity/hostile/jevil/attack/vanish/devilsknife/sort
