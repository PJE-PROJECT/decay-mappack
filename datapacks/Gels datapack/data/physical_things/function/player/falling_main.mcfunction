

#execute if score #vy main_score matches ..0 run function physical_things:player/test_start_falling


scoreboard players set #test2 main_score 0
execute positioned ~0.3 ~ ~0.3 align xz positioned ~0.5 ~0.03125 ~0.5 run function physical_things:player/test_gel
execute if score #test2 main_score matches 0 positioned ~0.3 ~ ~-0.3 align xz positioned ~0.5 ~0.03125 ~0.5 run function physical_things:player/test_gel
execute if score #test2 main_score matches 0 positioned ~-0.3 ~ ~0.3 align xz positioned ~0.5 ~0.03125 ~0.5 run function physical_things:player/test_gel
execute if score #test2 main_score matches 0 positioned ~-0.3 ~ ~-0.3 align xz positioned ~0.5 ~0.03125 ~0.5 run function physical_things:player/test_gel
execute if score #test2 main_score matches 0 run effect clear @s jump_boost
execute if score #test2 main_score matches 1 run function physical_things:player/no_stand_on_gel

tag @s[tag=stojal_rovno,tag=new_y_pos] remove new_y_pos


execute if score #vy main_score matches 1.. run function physical_things:player/potoloc_no_motion_tp


#execute if entity @s[tag=motion_tp] run function physical_things:player/y_motion

scoreboard players set #mot_x main_score 1
scoreboard players set #mot_z main_score 1

scoreboard players operation #test_mot_x main_score = #vx main_score
scoreboard players operation #test_mot_z main_score = #vz main_score

function physical_things:test_gel_wall


execute if predicate physical_things:scores/wall_gel run function physical_things:player/xz_motion
