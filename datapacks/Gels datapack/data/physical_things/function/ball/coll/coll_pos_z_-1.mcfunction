function physical_things:coll_block
scoreboard players operation *air main_score = #test main_score
scoreboard players set #test main_score 0
execute if score *air main_score matches 0 positioned ~ ~ ~-0.05 run function physical_things:coll_block
scoreboard players operation *air2 main_score = #test main_score

execute if score *air main_score matches 1 run scoreboard players add *coll_-z_all main_score 1
execute if score *air main_score matches 0 if score *air2 main_score matches 0 run scoreboard players add *vector_z main_score 2
execute unless score *z_panel main_score matches 1 if score *air main_score matches 0 if block ~ ~ ~ #physical_things:tonkie run scoreboard players set *z_panel main_score 1

execute if score *air main_score matches -1 run scoreboard players add *vector2_z main_score 1



