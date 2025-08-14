#particle dust 0 0 0 0.3 ~ ~ ~ 0 0 0 0 1 force


execute if score *coll_pos_x main_score matches 1 run function physical_things:ball/coll/coll_pos_x_1
execute if score *coll_pos_y main_score matches 1 run function physical_things:ball/coll/coll_pos_y_1
execute if score *coll_pos_z main_score matches 1 run function physical_things:ball/coll/coll_pos_z_1
execute if score *coll_pos_x main_score matches -1 run function physical_things:ball/coll/coll_pos_x_-1
execute if score *coll_pos_y main_score matches -1 run function physical_things:ball/coll/coll_pos_y_-1
execute if score *coll_pos_z main_score matches -1 run function physical_things:ball/coll/coll_pos_z_-1

