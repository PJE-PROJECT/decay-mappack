data modify storage midwut:main Data set from entity @s

scoreboard players set #vy main_score 84
scoreboard players operation #vy_ main_score = @s physical_things.mot_y
scoreboard players operation #vy_ main_score /= #43 const
scoreboard players operation #vy main_score += #vy_ main_score

execute if block ~ ~ ~ #physical_things:air_blob run scoreboard players operation @s physical_things.mot_y -= #vy main_score
execute unless block ~ ~ ~ #physical_things:air_blob run function physical_things:blob/kill/pre

scoreboard players set *dx main_score 1
execute if score @s physical_things.mot_x matches ..-1 run scoreboard players set *dx main_score -1
scoreboard players operation @s physical_things.mot_x *= *dx main_score
scoreboard players operation @s physical_things.mot_x *= #99 const
scoreboard players operation @s physical_things.mot_x /= #100 const
scoreboard players operation @s physical_things.mot_x *= *dx main_score

scoreboard players set *dx main_score 1
execute if score @s physical_things.mot_z matches ..-1 run scoreboard players set *dx main_score -1
scoreboard players operation @s physical_things.mot_z *= *dx main_score
scoreboard players operation @s physical_things.mot_z *= #99 const
scoreboard players operation @s physical_things.mot_z /= #100 const
scoreboard players operation @s physical_things.mot_z *= *dx main_score

execute store result score #x main_score run data get storage midwut:main Data.Pos[0] 1000
execute store result score #y main_score run data get storage midwut:main Data.Pos[1] 1000
execute store result score #z main_score run data get storage midwut:main Data.Pos[2] 1000

execute store result storage midwut:main Data.Pos[0] double 0.001 run scoreboard players operation #x main_score += @s physical_things.pos_x
execute store result storage midwut:main Data.Pos[1] double 0.001 run scoreboard players operation #y main_score += @s physical_things.pos_y
execute store result storage midwut:main Data.Pos[2] double 0.001 run scoreboard players operation #z main_score += @s physical_things.pos_z

data modify entity @s Pos set from storage midwut:main Data.Pos