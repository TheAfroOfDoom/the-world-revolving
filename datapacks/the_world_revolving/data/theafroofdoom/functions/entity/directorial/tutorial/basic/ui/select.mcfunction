# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\ui\select.mcfunction

# Defend
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}} run function theafroofdoom:entity/directorial/tutorial/basic/ui/select/defend

# Magic.Pacify
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}} run function theafroofdoom:entity/directorial/tutorial/basic/ui/select/magic/pacify
