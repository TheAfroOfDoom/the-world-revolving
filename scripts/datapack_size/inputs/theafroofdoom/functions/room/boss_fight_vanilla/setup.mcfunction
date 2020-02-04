# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\boss_fight_vanilla\setup.mcfunction

# Debugging
execute if entity @a[scores={debug=1}] run say DEBUG: function theafroofdoom:room/boss_fight_vanilla/setup

# Reset boss_fight_vanilla decorative entities
kill @e[tag=decorative_boss_fight_vanilla]

# Summon Jevil used to start boss fight
summon armor_stand 0 4 -136 {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_shovel",tag:{CustomModelData:6}}],CustomName:'"Jevil Lobby"',DisabledSlots:4144959,Invisible:1,Invulnerable:1,Marker:1b,NoGravity:1,Rotation:[180.0f,0.0f],Team:jevil,Tags:["the_world_revolving","decorative","decorative_boss_fight_vanilla","lobby_jevil"]}
summon villager 0 4 -136 {ActiveEffects:[{Amplifier:0b,Duration:2147483647,Id:14b,ShowParticles:0b}],Attributes:[{Name:"generic.knockbackResistance",Base:1.0f}],CustomName:'"Jevil Lobby Right Click"',Invulnerable:1,NoAI:1,NoGravity:1,PersistenceRequired:1,Rotation:[180.0f,0.0f],Silent:1,Team:immovable,VillagerData:{level:0,profession:"minecraft:nitwit",type:"minecraft:plains"},Tags:["the_world_revolving","decorative","decorative_boss_fight_vanilla","lobby_jevil_right_click"]}

# Set room setup flag to 1
scoreboard players set #global.room.boss_fight_vanilla.setup setting 1
