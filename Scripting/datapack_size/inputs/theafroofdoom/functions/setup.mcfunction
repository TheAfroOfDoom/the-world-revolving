# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \setup.mcfunction

# Sets up objectives, fake players, entities, and teams required for the map to run.

# REVIEW(jordan): Add support for languages:
# https://minecraft.gamepedia.com/Language
# {
#                   - Afrikaans
#                   - Arabic
#                   - Asturian
#                   - Azerbaijani
#                   - Belarusian
#                   - Bulgarian
#                   - Breton
#                   - Brabantian
#                   - Bosnian
#                   - Catalan
#                   - Czech
#                   - Welsh
#                   - Danish
#                   - Austrian German
#                   - Swiss German
#                   - German
#                   - Greek
#                   - Australian English
#                   - Canadian English
#                   - British English
#                   - New Zealand English
#                   - Esperanto
#                   - Argentinian Spanish
#                   - Chilean Spanish
#             Lukie - Spanish
#              Eric - Mexican Spanish
#                   - Uruguayan Spanish
#                   - Venezuelan Spanish
#                   - Estonian
#                   - Basque
#                   - Persian
#                   - Finnish
#                   - Filipino
#                   - Faroese
#          legomath - Canadian French
#                   - French
#                   - Frisian
#                   - Irish
#                   - Scottish Gaelic
#                   - Galician
#                   - Manx
#                   - Hawaiian
#                   - Hebrew
#                   - Hindi
#                   - Croatian
#                   - Hungarian
#                   - Armenian
#                   - Indonesian
#                   - Igbo
#                   - Ido
#                   - Icelandic
#                   - Italian
#                   - Japanese
#                   - Lojban
#                   - Georgian
#                   - Kabyle
#                   - Kannada
#                   - Korean
#                   - Kölsch/Ripuarian
#                   - Cornish
#                   - Latin
#                   - Luxembourgish
#                   - Limburgish
#                   - Lithuanian
#                   - Latvian
#                   - Maori
#                   - Macedonian
#                   - Mongolian
#                   - Mohawk
#                   - Malay
#                   - Maltese
#                   - Low German
#                   - Dutch, Flemish
#                   - Dutch
#                   - Norwegian Nynorsk
#                   - Norwegian
#                   - Norwegian Bokmål
#                   - Nuu-chah-nulth
#                   - Occitan
#                   - Ojibwe
#                   - Elfdalian
#                   - Polish
#                   - Brazilian Portuguese
#             Tyler - Portuguese
#                   - Romanian
#                   - Russian
#                   - Northern Sami
#                   - Slovak
#                   - Slovenian
#                   - Somali
#                   - Albanian
#                   - Serbian
#                   - Swedish
#                   - Allgovian German
#                   - Upper Saxon German
#                   - Silesian
#                   - Tamil
#                   - Thai
#                   - Turkish
#                   - Tatar
#                   - Ukrainian
#                   - Valencian
#                   - Venetian
#                   - Vietnamese
#                   - Franconian
#                   - Yoruba
#             Jerry - Chinese (Simplified)
#             Jerry - Chinese (Traditional)
# }

# Debugging
execute if entity @a[scores={debug=1}] run say DEBUG: function theafroofdoom:setup

# Add teams
team add credits
team modify credits deathMessageVisibility hideForOtherTeams
team modify credits nametagVisibility never
team modify credits prefix {"color":"gold","translate":"credits.abbreviation","with":[{"color":"green","text":"["},{"color":"green","text":"]"}]}
team modify credits seeFriendlyInvisibles false

team add dead
team modify dead color blue
team modify dead friendlyFire false
team modify dead seeFriendlyInvisibles false

team add immovable
team modify immovable collisionRule never
team modify immovable nametagVisibility never

team add jevil
team modify jevil collisionRule pushOtherTeams
team modify jevil color dark_purple
team modify jevil deathMessageVisibility never
team modify jevil nametagVisibility never
team modify jevil friendlyFire false

team add player
team modify player color blue
team modify player friendlyFire false
team modify player seeFriendlyInvisibles false

team add spectator
team modify spectator collisionRule never
team modify spectator color yellow
team modify spectator deathMessageVisibility hideForOtherTeams
team modify spectator friendlyFire false
team modify spectator seeFriendlyInvisibles false

team add tutorial_adv
team modify tutorial_adv deathMessageVisibility hideForOtherTeams
team modify tutorial_adv nametagVisibility never
team modify tutorial_adv prefix {"color":"yellow","translate":"tutorial.advanced.abbreviation","with":[{"color":"green","text":"["},{"color":"aqua","text":"+"},{"color":"green","text":"]"}]}

team add tutorial_basic
team modify tutorial_basic deathMessageVisibility hideForOtherTeams
team modify tutorial_basic nametagVisibility never
team modify tutorial_basic prefix {"color":"yellow","translate":"tutorial.basic.abbreviation","with":[{"color":"green","text":"["},{"color":"green","text":"]"}]}

# Add objectives
# Non-dummy
scoreboard objectives add ate_apple minecraft.used:minecraft.apple
scoreboard objectives add ate_beetroot minecraft.used:minecraft.beetroot
scoreboard objectives add ate_cookie minecraft.used:minecraft.cookie
scoreboard objectives add ate_potato minecraft.used:minecraft.potato
scoreboard objectives add ate_trop_fish minecraft.used:minecraft.tropical_fish

scoreboard objectives add coas_rclick minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damage_dealt_tot minecraft.custom:minecraft.damage_dealt

scoreboard objectives add food food

scoreboard objectives add health health
scoreboard objectives setdisplay list health

scoreboard objectives add left_game minecraft.custom:minecraft.leave_game

scoreboard objectives add player_dead deathCount
scoreboard objectives add player_interact minecraft.custom:minecraft.talked_to_villager

# Dummy
scoreboard objectives add afro.math_0 dummy
scoreboard objectives add afro.math_1 dummy
scoreboard objectives add afro.math_2 dummy
scoreboard objectives add afro.math_3 dummy
scoreboard objectives add afro.math_4 dummy
scoreboard objectives add afro.math_5 dummy
scoreboard objectives add afro.math_6 dummy

scoreboard objectives add attack_ang_min dummy
scoreboard objectives add attack_ang_range dummy
scoreboard objectives add attack_bullets dummy
scoreboard objectives add attack_charge_up dummy
scoreboard objectives add attack_clock dummy
scoreboard objectives add attack_cone dummy
scoreboard objectives add attack_cone_mult dummy
scoreboard objectives add attack_cycles dummy
scoreboard objectives add attack_delay dummy
scoreboard objectives add attack_diff dummy
scoreboard objectives add attack_influence dummy
scoreboard objectives add attack_length dummy
scoreboard objectives add attack_model dummy
scoreboard objectives add attack_model_1 dummy
scoreboard objectives add attack_model_2 dummy
scoreboard objectives add attack_rad_min dummy
scoreboard objectives add attack_rad_range dummy
scoreboard objectives add attack_rate dummy
scoreboard objectives add attack_recover dummy
scoreboard objectives add attack_rt_static dummy
scoreboard objectives add attack_seq_dir dummy
scoreboard objectives add attack_seq_spd dummy
scoreboard objectives add attack_variant dummy
scoreboard objectives add attack_var_rand dummy
scoreboard objectives add attack_voice dummy
scoreboard objectives add attack_weight dummy
scoreboard objectives add attack_wrp_end dummy
scoreboard objectives add attack_wrp_in dummy
scoreboard objectives add attack_wrp_out dummy
scoreboard objectives add attack_wrp_spd dummy
scoreboard objectives add attack_wrp_start dummy

scoreboard objectives add bfight_index dummy
scoreboard objectives add bfight_health dummy
scoreboard objectives add bfight_length dummy
scoreboard objectives add bfight_pacified dummy
scoreboard objectives add bfight_phase dummy
scoreboard objectives add bfight_phase_atk dummy
scoreboard objectives add bfight_pir_phase dummy
scoreboard objectives add bfight_tired dummy
scoreboard objectives add bfight_tired_phs dummy
scoreboard objectives add bfight_turn dummy

scoreboard objectives add bullet_id dummy
scoreboard objectives add bullet_id_tr_lv dummy

scoreboard objectives add constant dummy

scoreboard objectives add credits_delay dummy
scoreboard objectives add credits_phase dummy
scoreboard objectives add credits_subphase dummy

scoreboard objectives add cutscn_interact dummy
scoreboard objectives add cutscn_text_id dummy
scoreboard objectives add cutscn_text_time dummy

scoreboard objectives add debug dummy

scoreboard objectives add group_id dummy
scoreboard objectives add group_id_tr_lv dummy

scoreboard objectives add hearts_needed dummy

scoreboard objectives add jevil_clock dummy
scoreboard objectives add jevil_cutscene dummy
scoreboard objectives add jevil_damage dummy
scoreboard objectives add jevil_dance dummy
scoreboard objectives add jevil_model dummy

scoreboard objectives add origin_x dummy
scoreboard objectives add origin_y dummy
scoreboard objectives add origin_z dummy

scoreboard objectives add parrot_clock dummy

scoreboard objectives add player_clock dummy
scoreboard objectives add player_credits dummy
scoreboard objectives add  dummy
scoreboard objectives add player_music dummy
scoreboard objectives add player_music_beg dummy
scoreboard objectives add player_music_len dummy
scoreboard objectives add player_skip dummy
scoreboard objectives add player_spam dummy
scoreboard objectives add player_tpoints dummy
scoreboard objectives add player_trv_delay dummy

scoreboard objectives add pos_dx dummy
scoreboard objectives add pos_dz dummy
scoreboard objectives add pos_x_current dummy
scoreboard objectives add pos_x_last dummy
scoreboard objectives add pos_z_current dummy
scoreboard objectives add pos_z_last dummy

scoreboard objectives add random dummy
scoreboard objectives add random_min dummy
scoreboard objectives add random_range dummy

scoreboard objectives add sequence_id dummy

scoreboard objectives add setting dummy

scoreboard objectives add tut_delay dummy
scoreboard objectives add tut_phase dummy
scoreboard objectives add tut_subphase dummy

function math:setup

# Set fake-players (constants and attack properties)
scoreboard players set #-1 constant -1
scoreboard players set #2 constant 2
scoreboard players set #3 constant 3
scoreboard players set #4 constant 4
scoreboard players set #5 constant 5
scoreboard players set #8 constant 8
scoreboard players set #9 constant 9
scoreboard players set #10 constant 10
scoreboard players set #13 constant 13
scoreboard players set #20 constant 20
scoreboard players set #27 constant 27
scoreboard players set #30 constant 30
scoreboard players set #33 constant 33
scoreboard players set #40 constant 40
scoreboard players set #80 constant 80
scoreboard players set #100 constant 100

scoreboard players set #arena.ceiling.y constant 33
scoreboard players set #arena.floor.y constant 4
scoreboard players set #arena.wall.x constant 51
scoreboard players set #arena.wall.z constant 51

scoreboard players set #global.path_wisp.active setting 0
scoreboard players set #global.path_wisp.clock setting -1
scoreboard players set #global.room.boss_fight_vanilla.quick_in setting 0
scoreboard players set #global.room.club.names setting 0
scoreboard players set #global.room.lobby.droom.names setting 0
scoreboard players set #global.room.lobby.hroom.names setting 0

scoreboard players set #settings.items.healing.preset setting 2
scoreboard players set #settings.spam setting 100
scoreboard players set #settings.text.location setting 0

scoreboard players set #tutorial.advanced.damage.max constant 600

# Kill all the_world_revolving entities
kill @e[tag=the_world_revolving]

# Summon entities
function theafroofdoom:entity/setup

# Summon room things
function theafroofdoom:room/setup
