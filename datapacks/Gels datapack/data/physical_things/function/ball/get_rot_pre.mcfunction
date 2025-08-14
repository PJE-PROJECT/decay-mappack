summon minecraft:marker ~ ~ ~ {Tags:["get_rot"]}
tag @s add select_ball
execute as @e[type=minecraft:marker,distance=..0.0001,tag=get_rot,limit=1] run function physical_things:ball/get_rot
tag @s remove select_ball

scoreboard players operation @s physical_things.rot = *rot main_score