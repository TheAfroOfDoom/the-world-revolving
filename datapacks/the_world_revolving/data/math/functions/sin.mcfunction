#"in" is an angle in degrees; "out" is the sine of the angle scaled up by 100
scoreboard players operation @s math_in_w = @s math_in
function math:wrap_angle
function math:abs
scoreboard players set @s math_k1 9
scoreboard players set @s math_k2 10
scoreboard players operation @s math_k3 = @s math_out
scoreboard players operation @s math_k3 /= @s math_k1
scoreboard players set @s math_out 20
scoreboard players operation @s math_out -= @s math_k3
scoreboard players operation @s math_out *= @s math_in
scoreboard players operation @s math_out /= @s math_k2
scoreboard players operation @s math_in = @s math_in_w