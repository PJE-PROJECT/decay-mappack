
scoreboard players operation #a0 main_score = #out math
scoreboard players operation #a2 main_score = #number math
scoreboard players operation #a2 main_score /= #out math
scoreboard players operation #out math += #a2 main_score
scoreboard players operation #out math /= #2 const

scoreboard players add #test main_score 1
execute unless score #out math = #a0 main_score if score #test main_score matches ..15 run function sbpg:code/math/y_functions/math/zprivate/root_v2_process

