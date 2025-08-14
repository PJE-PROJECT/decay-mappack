tag @s add falling
execute store result score @s physical_things.mot_y run data get entity @s Pos[1] 10
scoreboard players add @s physical_things.mot_y 1
#function physical_things:player/end_jump2

execute store result score #x main_score run data get entity @s Motion[0] 3800000
execute store result score #z main_score run data get entity @s Motion[2] 3800000
scoreboard players operation #x3 main_score = x2 main_score
scoreboard players operation #z3 main_score = z2 main_score
#scoreboard players operation #x3 main_score *= #28000 const
#scoreboard players operation #z3 main_score *= #28000 const

execute if score x2 main_score matches 1.. if score #x main_score > x2 main_score run scoreboard players operation @s physical_things.mot_x = #x main_score
execute if score z2 main_score matches 1.. if score #z main_score > z2 main_score run scoreboard players operation @s physical_things.mot_z = #z main_score
execute if score x2 main_score matches 1.. if score x2 main_score > #x main_score run scoreboard players operation @s physical_things.mot_x = x2 main_score
execute if score z2 main_score matches 1.. if score z2 main_score > #z main_score run scoreboard players operation @s physical_things.mot_z = z2 main_score
execute if score x2 main_score matches ..-1 if score #x main_score < x2 main_score run scoreboard players operation @s physical_things.mot_x = #x main_score
execute if score z2 main_score matches ..-1 if score #z main_score < z2 main_score run scoreboard players operation @s physical_things.mot_z = #z main_score
execute if score x2 main_score matches ..-1 if score x2 main_score < #x main_score run scoreboard players operation @s physical_things.mot_x = x2 main_score
execute if score z2 main_score matches ..-1 if score z2 main_score < #z main_score run scoreboard players operation @s physical_things.mot_z = z2 main_score
execute if score x2 main_score = #x main_score run scoreboard players set @s physical_things.mot_x 0
execute if score z2 main_score = #z main_score run scoreboard players set @s physical_things.mot_z 0

