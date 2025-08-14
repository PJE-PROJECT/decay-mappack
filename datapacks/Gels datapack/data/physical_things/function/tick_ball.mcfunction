scoreboard players operation #id_test main_score = @s physical_things.id

data modify storage midwut:main Data set from entity @s

execute store result score x2 main_score run data get storage midwut:main Data.Pos[0] 1000
execute store result score y2 main_score run data get storage midwut:main Data.Pos[1] 1000
execute store result score z2 main_score run data get storage midwut:main Data.Pos[2] 1000


execute if entity @s[tag=!hovering] run function physical_things:ball/main
execute if entity @s[tag=hovering] as @e[type=minecraft:area_effect_cloud,tag=physical_things.ball_aec] if score @s physical_things.id = #id_test main_score run function physical_things:ball/tp_model

scoreboard players remove @s[scores={physical_things.vx=1..}] physical_things.vx 1
scoreboard players remove @s[scores={physical_things.vz=1..}] physical_things.vz 1
scoreboard players add @s[scores={physical_things.vx=..-1}] physical_things.vx 1
scoreboard players add @s[scores={physical_things.vz=..-1}] physical_things.vz 1

execute store result score *hovering main_score if entity @s[tag=hovering]
scoreboard players set #test main_score 0
execute if score @s physical_things.vx matches 0 if score @s physical_things.vy matches 0 if score @s physical_things.vz matches 0 run scoreboard players set #test main_score 1
execute if score *hovering main_score matches 1 run function physical_things:ball/get_pos
execute if score #test main_score matches 0 run function physical_things:ball/get_rot_pre
execute if score #test main_score matches 1 run scoreboard players operation *rot main_score = @s physical_things.rot


#execute if entity @s[tag=!hovering] run function physical_things:ball/get_pos

execute store result score number math run data get entity @s Pos[0] 1000
execute store result score *vector_y main_score run data get entity @s Pos[1] 1000
execute store result score *vector_z main_score run data get entity @s Pos[2] 1000

scoreboard players operation number math -= x2 main_score
scoreboard players operation *vector_y main_score -= y2 main_score
scoreboard players operation *vector_z main_score -= z2 main_score

scoreboard players operation number math *= number math
scoreboard players operation *vector_y main_score *= *vector_y main_score
scoreboard players operation *vector_z main_score *= *vector_z main_score

scoreboard players operation number math += *vector_y main_score
scoreboard players operation number math += *vector_z main_score

#tellraw @a[tag=hh] [{"score":{"name": "number math","objective": "math"}}]

function midwut:help/math/root_v2

#tellraw @a [{"score":{"name": "out","objective": "math"}}]

scoreboard players operation @s physical_things.rot2 += out math
scoreboard players operation *r main_score = @s physical_things.rot2


execute at @s as @e[type=minecraft:armor_stand,tag=physical_things.ball_model] if score @s physical_things.id = #id_test main_score run function physical_things:ball/model



