#"in" is an angle in degrees; "out" is an equivalent angle in the range -180..180
execute if score @s math_in matches ..-181 run scoreboard players add @s math_in 360
execute if score @s math_in matches 181.. run scoreboard players remove @s math_in 360
execute unless score @s math_in matches -180..180 run function math:wrap_angle
execute if score @s math_in matches -180..180 run scoreboard players operation @s math_out = @s math_in