
execute if score #vx main_score matches 1.. if score @s physical_things.mot_x < #vx main_score run function physical_things:player/set_new_motion/x
execute if score #vx main_score matches ..-1 if score @s physical_things.mot_x > #vx main_score run function physical_things:player/set_new_motion/x

execute if score #vz main_score matches 1.. if score @s physical_things.mot_z < #vz main_score run function physical_things:player/set_new_motion/z
execute if score #vz main_score matches ..-1 if score @s physical_things.mot_z > #vz main_score run function physical_things:player/set_new_motion/z

