scoreboard players operation @s math_k4 = @s math_out
scoreboard players operation @s math_k3 = @s math_in_w
scoreboard players operation @s math_k3 /= @s math_out
scoreboard players operation @s math_out += @s math_k3
scoreboard players operation @s math_out /= @s math_k2
scoreboard players operation @s math_k4 -= @s math_out
execute unless score @s math_k4 matches -1..1 run function math:esqrt