# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\ui\select.mcfunction

# Skip
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16}}} run function theafroofdoom:entity/directorial/tutorial/advanced/ui/select/skip

# Magic.Heal Prayer
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}} run function theafroofdoom:entity/directorial/tutorial/advanced/ui/select/magic/heal_prayer

# Magic.Rude Buster
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}} run function theafroofdoom:entity/directorial/tutorial/advanced/ui/select/magic/rude_buster
