#scoreboard players set #test main_score 0

execute if score #vy_ main_score matches 1.. run function physical_things:player/new_y_pos
execute if score #vy_ main_score matches ..-1 run function physical_things:player/search_motion_down
