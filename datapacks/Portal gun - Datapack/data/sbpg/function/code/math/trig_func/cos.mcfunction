## scoreboard players get #IN:angle math - Input
## scoreboard players get #OUT:cos math - Output

scoreboard players operation COS:m math = #IN:angle math
scoreboard players add COS:m math 90000
scoreboard players operation COS:m math %= #180000 const
scoreboard players set COS:a math 180000
scoreboard players operation COS:a math -= COS:m math
scoreboard players operation COS:a math /= #100 const
scoreboard players operation COS:a math *= COS:m math
scoreboard players operation #OUT:cos math = COS:a math
scoreboard players operation #OUT:cos math *= #4 const
scoreboard players operation COS:a math /= #10 const
scoreboard players set COS:b math 40500000
scoreboard players operation COS:b math -= COS:a math
scoreboard players operation COS:b math /= #1000 const
scoreboard players operation #OUT:cos math /= COS:b math
execute if score #IN:angle math matches 90000..270000 run scoreboard players operation #OUT:cos math *= #-1 const


## function midwut:help/math/trig_func/cos