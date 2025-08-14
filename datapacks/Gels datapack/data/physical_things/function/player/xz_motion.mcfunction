#scoreboard players set #test main_score 0
#execute if entity @s[tag=y_motion_tp] run scoreboard players set #test main_score 1

scoreboard players operation #IN:arctg2.X math = #vz_ main_score
scoreboard players operation #IN:arctg2.Y math = #vx_ main_score
function midwut:help/math/trig_func/arc/tg2
scoreboard players operation #IN:angle math = #OUT:arctg math
function midwut:help/math/trig_func/cos
function midwut:help/math/trig_func/sin




scoreboard players operation #x3 main_score = #gggg const
scoreboard players operation #z3 main_score = #gggg const



scoreboard players operation #x3 main_score *= #OUT:sin math
scoreboard players operation #z3 main_score *= #OUT:cos math
scoreboard players operation #x3 main_score /= #10000 const
scoreboard players operation #z3 main_score /= #10000 const

execute if score #vx_ main_score matches ..-1 run scoreboard players operation #x3 main_score *= #-1 const
execute if score #vz_ main_score matches ..-1 run scoreboard players operation #z3 main_score *= #-1 const




#scoreboard players operation #mot_x main_score > #-1 const
#scoreboard players operation #mot_z main_score > #-1 const
scoreboard players operation #x3 main_score *= #mot_x main_score
scoreboard players operation #z3 main_score *= #mot_z main_score

scoreboard players operation $x delta.api.launch = #x3 main_score
scoreboard players operation $z delta.api.launch = #z3 main_score
scoreboard players set $y delta.api.launch 5460
playsound minecraft:player_bounce_jump_paint_01 ambient @a ~ ~ ~ 0.5 1 0



function delta:api/launch_xyz
#say 1
#say 3
#tag @s add y_motion_tp