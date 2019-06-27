scoreboard players set @s math_k1 4
scoreboard players operation #maxrand mcprng = @s math_maxrand
scoreboard players add #maxrand mcprng 1
scoreboard players operation #maxrand mcprng *= @s math_k1
function mcprng:nextrand
scoreboard players operation @s math_out = #randval mcprng
scoreboard players operation @s math_out /= @s math_k1