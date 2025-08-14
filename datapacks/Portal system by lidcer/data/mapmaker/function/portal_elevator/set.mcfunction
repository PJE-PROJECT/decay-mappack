tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]



##ARRIVAL CLEAN
#North
execute at @e[tag=elevator_miniature,tag=arrival_clean,y_rotation=180] positioned ^9 ^-8 ^13 run place template elevator:arrival_clean ~ ~ ~
#South
execute at @e[tag=elevator_miniature,tag=arrival_clean,y_rotation=0] positioned ^9 ^-8 ^13 run place template elevator:arrival_clean ~ ~ ~ 180
#East
execute at @e[tag=elevator_miniature,tag=arrival_clean,y_rotation=270] positioned ^9 ^-8 ^13 run place template elevator:arrival_clean ~ ~ ~ clockwise_90
#West
execute at @e[tag=elevator_miniature,tag=arrival_clean,y_rotation=90] positioned ^9 ^-8 ^13 run place template elevator:arrival_clean ~ ~ ~ counterclockwise_90

##ARRIVAL RUSTED SKIN 1
#North
execute at @e[tag=elevator_miniature,tag=arrival_rusted1,y_rotation=180] positioned ^9 ^-8 ^13 run place template elevator:arrival_skin1 ~ ~ ~
#South
execute at @e[tag=elevator_miniature,tag=arrival_rusted1,y_rotation=0] positioned ^9 ^-8 ^13 run place template elevator:arrival_skin1 ~ ~ ~ 180
#East
execute at @e[tag=elevator_miniature,tag=arrival_rusted1,y_rotation=270] positioned ^9 ^-8 ^13 run place template elevator:arrival_skin1 ~ ~ ~ clockwise_90
#West
execute at @e[tag=elevator_miniature,tag=arrival_rusted1,y_rotation=90] positioned ^9 ^-8 ^13 run place template elevator:arrival_skin1 ~ ~ ~ counterclockwise_90

##ARRIVAL RUSTED SKIN 2
#North
execute at @e[tag=elevator_miniature,tag=arrival_rusted2,y_rotation=180] positioned ^9 ^-8 ^13 run place template elevator:arrival_skin2 ~ ~ ~
#South
execute at @e[tag=elevator_miniature,tag=arrival_rusted2,y_rotation=0] positioned ^9 ^-8 ^13 run place template elevator:arrival_skin2 ~ ~ ~ 180
#East
execute at @e[tag=elevator_miniature,tag=arrival_rusted2,y_rotation=270] positioned ^9 ^-8 ^13 run place template elevator:arrival_skin2 ~ ~ ~ clockwise_90
#West
execute at @e[tag=elevator_miniature,tag=arrival_rusted2,y_rotation=90] positioned ^9 ^-8 ^13 run place template elevator:arrival_skin2 ~ ~ ~ counterclockwise_90


##DEPARTURE CLEAN
#North
execute at @e[tag=elevator_miniature,tag=departure_clean,y_rotation=180] positioned ^9 ^-15 ^13 run place template elevator:departure_clean ~ ~ ~
#South
execute at @e[tag=elevator_miniature,tag=departure_clean,y_rotation=0] positioned ^9 ^-15 ^13 run place template elevator:departure_clean ~ ~ ~ 180
#East
execute at @e[tag=elevator_miniature,tag=departure_clean,y_rotation=270] positioned ^9 ^-15 ^13 run place template elevator:departure_clean ~ ~ ~ clockwise_90
#West
execute at @e[tag=elevator_miniature,tag=departure_clean,y_rotation=90] positioned ^9 ^-15 ^13 run place template elevator:departure_clean ~ ~ ~ counterclockwise_90

##DEPARTURE RUSTED SKIN 1
#North
execute at @e[tag=elevator_miniature,tag=departure_rusted1,y_rotation=180] positioned ^9 ^-15 ^13 run place template elevator:departure_skin1 ~ ~ ~
#South
execute at @e[tag=elevator_miniature,tag=departure_rusted1,y_rotation=0] positioned ^9 ^-15 ^13 run place template elevator:departure_skin1 ~ ~ ~ 180
#East
execute at @e[tag=elevator_miniature,tag=departure_rusted1,y_rotation=270] positioned ^9 ^-15 ^13 run place template elevator:departure_skin1 ~ ~ ~ clockwise_90
#West
execute at @e[tag=elevator_miniature,tag=departure_rusted1,y_rotation=90] positioned ^9 ^-15 ^13 run place template elevator:departure_skin1 ~ ~ ~ counterclockwise_90

##DEPARTURE RUSTED SKIN 2
#North
execute at @e[tag=elevator_miniature,tag=departure_rusted2,y_rotation=180] positioned ^9 ^-15 ^13 run place template elevator:departure_skin2 ~ ~ ~
#South
execute at @e[tag=elevator_miniature,tag=departure_rusted2,y_rotation=0] positioned ^9 ^-15 ^13 run place template elevator:departure_skin2 ~ ~ ~ 180
#East
execute at @e[tag=elevator_miniature,tag=departure_rusted2,y_rotation=270] positioned ^9 ^-15 ^13 run place template elevator:departure_skin2 ~ ~ ~ clockwise_90
#West
execute at @e[tag=elevator_miniature,tag=departure_rusted2,y_rotation=90] positioned ^9 ^-15 ^13 run place template elevator:departure_skin2 ~ ~ ~ counterclockwise_90



playsound minecraft:block.iron_door.open ambient @a ~ ~ ~ 1 1.6
tag @s remove elevator_set
function mapmaker:tagremove
schedule function mapmaker:portal_elevator/elevator_cullings 5s append