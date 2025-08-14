

scoreboard players operation #IN:arctg2.X math = #Vec.Z main_score
scoreboard players operation #IN:arctg2.Y math = #Vec.X main_score
execute if score #IN:arctg2.Y math > #IN:arctg2.X math run scoreboard players operation #IN:arctg2.Y math >< #IN:arctg2.X math
function midwut:help/math/trig_func/arc/tg2

scoreboard players operation #IN:angle math = #OUT:arctg2 math
function midwut:help/math/trig_func/cos
scoreboard players operation #IN:arctg2.X math *= #10000 const
scoreboard players operation #IN:arctg2.X math /= #OUT:cos math

scoreboard players operation #IN:arctg2.Y math = #Vec.Y main_score
execute if score #IN:arctg2.Y math > #IN:arctg2.X math run scoreboard players operation #IN:arctg2.Y math >< #IN:arctg2.X math
function midwut:help/math/trig_func/arc/tg2

scoreboard players operation #IN:angle math = #OUT:arctg2 math
function midwut:help/math/trig_func/cos
scoreboard players operation #IN:arctg2.X math *= #10000 const
scoreboard players operation #IN:arctg2.X math /= #OUT:cos math

scoreboard players operation #Vec math = #IN:arctg2.X math

