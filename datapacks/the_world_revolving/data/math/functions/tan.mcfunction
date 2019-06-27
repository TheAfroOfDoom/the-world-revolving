#"in" is an angle in degrees; "out" is the tan of the angle
function math:sin
scoreboard players set @s math_k1 100
scoreboard players operation @s math_k4 = @s math_out
scoreboard players operation @s math_k4 *= @s math_k1
function math:cos
scoreboard players operation @s math_k4 /= @s math_out
scoreboard players operation @s math_out = @s math_k4