

scoreboard players operation #out math = #number math
scoreboard players operation #temp math = #power math
execute if score #number math matches 2.. if score #power math matches 2.. run function midwut:y_functions/math/zprivate/power
execute if score #power math matches 0 run scoreboard players set #out math 1



