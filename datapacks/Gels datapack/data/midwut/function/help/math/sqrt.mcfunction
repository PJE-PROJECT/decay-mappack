

execute if score #number math matches 214749.. run scoreboard players set #number math 0
execute if score #number math matches ..-1 run scoreboard players set #number math 0

scoreboard players operation #temp1 math = #number math
scoreboard players operation #temp1 math *= #10000 const

## math
scoreboard players set #out math 10000
scoreboard players set #test main_score 0
execute if score #number math matches 1.. run function midwut:y_functions/math/zprivate/newton_raphson

execute if score #out math matches ..-1 run scoreboard players operation #out math *= #-1 const
execute if score #number math matches 0 run scoreboard players set #out math 0

