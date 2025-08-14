execute store result score x main_score run data get entity @s Pos[0] 1000
execute store result score y main_score run data get entity @s Pos[1] 1000
execute store result score z main_score run data get entity @s Pos[2] 1000

scoreboard players operation x main_score -= @s impulse.x_pos
scoreboard players operation y main_score -= @s impulse.y_pos
scoreboard players operation z main_score -= @s impulse.z_pos

execute if score x main_score matches 500.. run scoreboard players set x main_score 500
execute if score y main_score matches 400.. run scoreboard players set y main_score 400
execute if score z main_score matches 500.. run scoreboard players set z main_score 500

execute if score x main_score matches ..-500 run scoreboard players set x main_score -500
execute if score y main_score matches ..-400 run scoreboard players set y main_score -400
execute if score z main_score matches ..-500 run scoreboard players set z main_score -500

execute store result entity @s Motion[0] double 0.0008 run scoreboard players get x main_score
execute store result entity @s Motion[1] double 0.0008 run scoreboard players get y main_score
execute store result entity @s Motion[2] double 0.0008 run scoreboard players get z main_score



tag @s remove ID
tag @s remove hovering
tag @s remove hovering_motion