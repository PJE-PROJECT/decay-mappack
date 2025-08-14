## scoreboard players get #IN:angle math - Input
## scoreboard players get #OUT:arccos math - Output

scoreboard players operation #x math = #IN:angle math

scoreboard players set sign math 0
execute if score #x math matches ..-1 run scoreboard players set sign math 1
execute if score #x math matches ..-1 run scoreboard players operation #x math *= #-1 const

scoreboard players set #number math 10000
scoreboard players operation #number math -= #x math
function midwut:help/math/sqrt_v2

scoreboard players set #OUT:arccos math -1873
scoreboard players operation #OUT:arccos math *= #x math
scoreboard players operation #OUT:arccos math /= #10000 const
scoreboard players add #OUT:arccos math 7426
scoreboard players operation #OUT:arccos math *= #x math
scoreboard players operation #OUT:arccos math /= #10000 const
scoreboard players remove #OUT:arccos math 21211
scoreboard players operation #OUT:arccos math *= #x math
scoreboard players operation #OUT:arccos math /= #10000 const
scoreboard players add #OUT:arccos math 157072

scoreboard players operation #OUT:arccos math *= #out math
scoreboard players operation #OUT:arccos math /= #100 const

scoreboard players operation #temp math = #OUT:arccos math
scoreboard players operation #temp math *= #2 const
scoreboard players operation #temp math *= sign math

scoreboard players operation #OUT:arccos math -= #temp math

scoreboard players set #temp math 31415926
scoreboard players operation #temp math *= sign math
scoreboard players operation #OUT:arccos math += #temp math
scoreboard players operation #OUT:arccos math /= #10 const

scoreboard players operation #OUT:arccos:rad math = #OUT:arccos math

scoreboard players operation #OUT:arccos math *= #180 const
scoreboard players operation #OUT:arccos math /= #pi_3 const
execute if score #OUT:arccos math matches 180001.. run scoreboard players set #OUT:arccos math 180000
