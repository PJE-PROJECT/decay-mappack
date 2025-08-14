
scoreboard players operation *pos_x main_score = @s physical_things.pos_x
scoreboard players operation *pos_y main_score = @s physical_things.pos_y
scoreboard players operation *pos_z main_score = @s physical_things.pos_z


scoreboard players operation @s physical_things.pos_x = x2 main_score
scoreboard players operation @s physical_things.pos_y = y2 main_score
scoreboard players operation @s physical_things.pos_z = z2 main_score



execute unless score *pos_x main_score = x2 main_score unless score *pos_y main_score = y2 main_score unless score *pos_z main_score = z2 main_score run scoreboard players set #test main_score 0