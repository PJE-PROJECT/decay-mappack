## (out + num/out) / 2 = out2

scoreboard players add #test main_score 1

### b = num/a
scoreboard players operation #test2 main_score = #temp1 math
scoreboard players operation #test2 main_score /= #out math

### a = (a+b)/2
scoreboard players operation #out math += #test2 main_score
scoreboard players operation #out math /= #2 const


scoreboard players operation #test2 main_score = #out math
scoreboard players operation #test2 main_score /= #100 const
scoreboard players add #test2 main_score 1
scoreboard players operation #test2 main_score *= #test2 main_score
scoreboard players operation #test2 main_score /= #10000 const

execute unless score #test main_score matches 20.. unless score #temp1 math = #test2 main_score run function midwut:y_functions/math/zprivate/newton_raphson