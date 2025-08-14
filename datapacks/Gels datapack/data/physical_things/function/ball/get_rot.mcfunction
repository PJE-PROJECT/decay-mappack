
execute if score *hovering main_score matches 1 run function physical_things:ball/get_pos_marker
execute at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:marker,tag=select_ball,limit=1] feet
execute store result score *rot main_score run data get entity @s Rotation[0] 1000

#tellraw @a[tag=rot] [{"score":{"name": "*rot","objective": "main_score"}}]

kill @s

