## scoreboard players get #IN:angle math - Input
## scoreboard players get #OUT:sin math - Output

scoreboard players operation SIN:x math = #IN:angle math
scoreboard players operation SIN:x math %= 180000* const
scoreboard players set SIN:a math 180000
scoreboard players operation SIN:a math -= SIN:x math
scoreboard players operation SIN:a math /= 100* const
scoreboard players operation SIN:a math *= SIN:x math
scoreboard players operation #OUT:sin math = SIN:a math
scoreboard players operation #OUT:sin math *= 4* const
scoreboard players operation SIN:a math /= 10* const
scoreboard players set SIN:b math 40500000
scoreboard players operation SIN:b math -= SIN:a math
scoreboard players operation SIN:b math /= 1000* const
scoreboard players operation #OUT:sin math /= SIN:b math
execute if score #IN:angle math matches 180000.. run scoreboard players operation #OUT:sin math *= -1* const

