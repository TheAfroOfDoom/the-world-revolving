#"math_in" is a base; "math_exp" is an exponent; "math_out" is the base to the power of the exponent
execute if score @s math_exp matches 1.. run scoreboard players operation @s math_out *= @s math_in
execute if score @s math_exp matches 1.. run scoreboard players remove @s math_exp 1
execute if score @s math_exp matches 1.. run function math:epow