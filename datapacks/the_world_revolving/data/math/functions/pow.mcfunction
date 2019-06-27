#"math_in" is a base; "math_exp" is an exponent; "math_out" is the base to the power of the exponent
scoreboard players operation @s math_in_w = @s math_exp
scoreboard players set @s math_out 1
execute if score @s math_exp matches ..-1 run scoreboard players set @s math_out 0
function math:epow
scoreboard players operation @s math_exp = @s math_in_w