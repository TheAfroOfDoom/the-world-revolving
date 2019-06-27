# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\base\sequence.mcfunction

# Run pre-defined sequence based on attack_variant
execute if score @s attack_variant matches -3 run function theafroofdoom:entity/hostile/jevil/attack/combination/chaos_bomb/sequence
execute if score @s attack_variant matches -2 run function theafroofdoom:entity/hostile/jevil/attack/combination/carousel/sequence
execute if score @s attack_variant matches -1 run function theafroofdoom:entity/hostile/jevil/attack/combination/ring_around/sequence
execute if score @s attack_variant matches 0 run function theafroofdoom:entity/hostile/jevil/attack/combination/0/sequence
