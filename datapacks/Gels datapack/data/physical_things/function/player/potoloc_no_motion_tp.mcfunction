scoreboard players set *potoloc_test main_score 0
execute positioned ~0.3 ~1.79 ~0.3 align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item_frame,distance=..0.1,tag=blue_gel,limit=1,nbt={Facing:0b}] run function physical_things:player/set_motion_y_no_motion
execute if score *potoloc_test main_score matches 0 positioned ~0.3 ~1.79 ~-0.3 align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item_frame,distance=..0.1,tag=blue_gel,limit=1,nbt={Facing:0b}] run function physical_things:player/set_motion_y_no_motion
execute if score *potoloc_test main_score matches 0 positioned ~-0.3 ~1.79 ~0.3 align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item_frame,distance=..0.1,tag=blue_gel,limit=1,nbt={Facing:0b}] run function physical_things:player/set_motion_y_no_motion
execute if score *potoloc_test main_score matches 0 positioned ~-0.3 ~1.79 ~-0.3 align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item_frame,distance=..0.1,tag=blue_gel,limit=1,nbt={Facing:0b}] run function physical_things:player/set_motion_y_no_motion

