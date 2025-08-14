
scoreboard players operation #IN:angle math = #IN:arctg2.Y math
scoreboard players operation #IN:angle math *= #-100 const
scoreboard players operation #IN:angle math /= #IN:arctg2.X math

function midwut:help/math/trig_func/arc/tg

scoreboard players operation #OUT:arctg2 math = #OUT:arctg math
execute if score #IN:arctg2.X math matches ..-1 run scoreboard players add #OUT:arctg2 math 180000
execute if score #OUT:arctg2 math matches ..-1 run scoreboard players add #OUT:arctg2 math 360000