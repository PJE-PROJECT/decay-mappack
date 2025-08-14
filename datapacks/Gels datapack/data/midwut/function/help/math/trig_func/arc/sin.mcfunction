## scoreboard players get #IN:angle math - Input
## scoreboard players get #OUT:arcsin math - Output

function midwut:help/math/trig_func/arc/cos

scoreboard players operation #OUT:arcsin math = #pi_6 const
scoreboard players operation #OUT:arcsin math /= #2 const
scoreboard players operation #OUT:arcsin math -= #OUT:arccos:rad math

scoreboard players operation #OUT:arcsin:rad math = #OUT:arccos math

scoreboard players operation #OUT:arcsin math *= #180 const
scoreboard players operation #OUT:arcsin math /= #pi_3 const
execute if score #OUT:arcsin math matches 180001.. run scoreboard players set #OUT:arcsin math 180000
