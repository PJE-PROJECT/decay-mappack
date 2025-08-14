execute if block ~ ~-0.1 ~ #physical_things:air_blob run scoreboard players operation @s physical_things.mot_y -= #vy main_score
execute unless block ~ ~-0.1 ~ #physical_things:air_blob run function physical_things:remove_with_id
