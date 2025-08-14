data modify storage midwut:main temp set from entity @s Pos
tag @s add selected_player_motion
execute as @e[type=minecraft:cat,tag=playaer.motion,tag=select_as_motion,limit=1] run function physical_things:player/tp_motion
tag @s remove selected_player_motion

execute if score *potoloc_test main_score matches -10000 run tag @s add new_y_pos
execute if score *potoloc_test main_score matches -10000 run scoreboard players operation @s physical_things.mot_y2 = *new_pl_pos main_score
#execute if score *potoloc_test main_score matches -10000 run scoreboard players set @s physical_things.mot_y 1000
#scoreboard players set #test2 main_score 0
#execute positioned ~0.3 ~-0.001 ~0.3 run function physical_things:coll_blocks
#scoreboard players operation #test2 main_score += #test main_score
#execute positioned ~0.3 ~-0.001 ~-0.3 run function physical_things:coll_blocks
#scoreboard players operation #test2 main_score += #test main_score
#execute positioned ~-0.3 ~-0.001 ~0.3 run function physical_things:coll_blocks
#scoreboard players operation #test2 main_score += #test main_score
#execute positioned ~-0.3 ~-0.001 ~-0.3 run function physical_things:coll_blocks
#scoreboard players operation #test2 main_score += #test main_score

#execute if score #y main_score matches 1..455000 run effect give @s levitation 1000000 255 true
#execute if score #y main_score matches ..0 if entity @s[tag=!falling] run function physical_things:player/end_jump2
execute if score #x main_score matches 0 if score #y main_score matches -78401..0 if score #z main_score matches 0 run function physical_things:player/end_jump






