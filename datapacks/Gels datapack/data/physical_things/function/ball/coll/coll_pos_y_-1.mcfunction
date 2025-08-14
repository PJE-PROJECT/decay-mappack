function physical_things:coll_block
scoreboard players operation *air main_score = #test main_score
execute positioned ~ ~-0.05 ~ run function physical_things:coll_block
scoreboard players operation *air2 main_score = #test main_score

execute if score *air main_score matches 1 run function physical_things:ball/coll/test_y_air
execute if score *air main_score matches 0 if score *air2 main_score matches 0 run function physical_things:ball/coll/vec_y_add
execute unless score *y_panel main_score matches 1 if score *air main_score matches 0 if block ~ ~ ~ #physical_things:tonkie run scoreboard players set *y_panel main_score 1

execute if score *air main_score matches -1 run scoreboard players add *vector2_y main_score 1
execute if score *air main_score matches -1 run scoreboard players remove *coll_-y_all2 main_score 1
#execute if score *air main_score matches -1 run scoreboard players add *coll_-y_all main_score 1


