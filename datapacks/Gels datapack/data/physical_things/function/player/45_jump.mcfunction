scoreboard players set #type main_score -1
execute positioned ~0.3 ~ ~0.3 run function physical_things:player/facing_stairs
execute if score #type main_score matches -1 positioned ~0.3 ~ ~-0.3 run function physical_things:player/facing_stairs
execute if score #type main_score matches -1 positioned ~-0.3 ~ ~0.3 run function physical_things:player/facing_stairs
execute if score #type main_score matches -1 positioned ~-0.3 ~ ~-0.3 run function physical_things:player/facing_stairs


scoreboard players operation #IN:angle math = #vx_ main_score
scoreboard players operation #y main_score = #vy_ main_score
scoreboard players operation *vec main_score = #vz_ main_score


execute if score *vec main_score < IN:angle math run scoreboard players operation *vec main_score >< IN:angle math
execute if score *vec main_score < #y main_score run scoreboard players operation *vec main_score >< #y main_score

scoreboard players operation #IN:arctg2.X math = *vec main_score
scoreboard players operation #IN:arctg2.Y math = IN:angle math
function midwut:help/math/trig_func/arc/tg2
scoreboard players operation #IN:angle math = OUT:arctg2 math
function midwut:help/math/trig_func/cos/cos
scoreboard players operation #OUT:cos math /= #10 const
scoreboard players operation *vec main_score *= #1000 const
scoreboard players operation *vec main_score /= OUT:cos math

scoreboard players operation IN:arctg2.X math = *vec main_score
scoreboard players operation IN:arctg2.Y math = #y main_score
function midwut:help/math/trig_func/arc/tg2
scoreboard players operation IN:angle math = OUT:arctg2 math
function midwut:help/math/trig_func/cos/cos
scoreboard players operation OUT:cos math /= #10 const
scoreboard players operation *vec main_score *= #1000 const
scoreboard players operation *vec main_score /= OUT:cos math



scoreboard players operation IN:arctg2.X math = #vz_ main_score
scoreboard players operation IN:arctg2.Y math = #vx_ main_score
function midwut:help/math/trig_func/arc/tg2

scoreboard players operation #test2 main_score = #type main_score
scoreboard players operation #test2 main_score += OUT:arctg2 math
scoreboard players operation #type main_score -= #test2 main_score

scoreboard players operation *offset.pos_z main_score = *vec main_score
scoreboard players operation *offset.pos_z main_score *= #20 const
scoreboard players set *offset.pos_y main_score 0
scoreboard players set *offset.pos_x main_score 0






scoreboard players set IN:angle math -10000
scoreboard players set IN:angle math 0
function midwut:help/math/trig_func/cos/cos
function midwut:help/math/trig_func/sin/sin
scoreboard players operation OUT:cos math /= #10 const
scoreboard players operation OUT:sin math /= #10 const
scoreboard players operation *cos_x math = OUT:cos math
scoreboard players operation *sin_x math = OUT:sin math


scoreboard players operation IN:angle math = #type main_score
scoreboard players set IN:angle math 0
function midwut:help/math/trig_func/cos/cos
function midwut:help/math/trig_func/sin/sin
scoreboard players operation OUT:cos math /= #10 const
scoreboard players operation OUT:sin math /= #10 const
scoreboard players operation *cos_y math = OUT:cos math
scoreboard players operation *sin_y math = OUT:sin math

scoreboard players set IN:angle math 0
function midwut:help/math/trig_func/cos/cos
function midwut:help/math/trig_func/sin/sin
scoreboard players operation OUT:cos math /= #10 const
scoreboard players operation OUT:sin math /= #10 const
scoreboard players operation *cos_z math = OUT:cos math
scoreboard players operation *sin_z math = OUT:sin math


scoreboard players operation #test main_score = *offset.pos_z main_score
scoreboard players operation #test main_score *= *cos_x math
scoreboard players operation *offset_z_ main_score = #test main_score
scoreboard players operation #test main_score = *offset.pos_y main_score
scoreboard players operation #test main_score *= *sin_x math
scoreboard players operation *offset_z_ main_score += #test main_score
scoreboard players operation *offset_z_ main_score /= #1000 const


scoreboard players operation *offset.pos_y main_score *= *cos_x math
scoreboard players operation *offset_y_ main_score = *offset.pos_y main_score
scoreboard players operation *offset.pos_z main_score *= *sin_x math
scoreboard players operation *offset_y_ main_score -= *offset.pos_z main_score
scoreboard players operation *offset_y_ main_score /= #1000 const

scoreboard players operation *offset_x_ main_score = *offset.pos_x main_score



scoreboard players operation #test2 main_score = *offset_y_ main_score
scoreboard players operation #test3 main_score = *offset_x_ main_score

scoreboard players operation #test main_score = #test2 main_score
scoreboard players operation #test main_score *= *cos_z math
scoreboard players operation *offset_y_ main_score = #test main_score
scoreboard players operation #test main_score = #test3 main_score
scoreboard players operation #test main_score *= *sin_z math
scoreboard players operation *offset_y_ main_score -= #test main_score
scoreboard players operation *offset_y_ main_score /= #1000 const

## offset_x_ = 0 sin cos
scoreboard players operation #test3 main_score *= *cos_z math
scoreboard players operation *offset_x_ main_score = #test3 main_score
scoreboard players operation #test2 main_score *= *sin_z math
scoreboard players operation *offset_x_ main_score += #test2 main_score
scoreboard players operation *offset_x_ main_score /= #1000 const





scoreboard players operation #test2 main_score = *offset_z_ main_score
scoreboard players operation #test3 main_score = *offset_x_ main_score

## offset_z_ = cos 0 sin
scoreboard players operation #test main_score = #test2 main_score
scoreboard players operation #test main_score *= *cos_y math
scoreboard players operation *offset_z_ main_score = #test main_score
scoreboard players operation #test main_score = #test3 main_score
scoreboard players operation #test main_score *= *sin_y math
scoreboard players operation *offset_z_ main_score += #test main_score
scoreboard players operation *offset_z_ main_score /= #1000 const

## offset_x_ = -sin 0 cos
scoreboard players operation #test3 main_score *= *cos_y math
scoreboard players operation *offset_x_ main_score = #test3 main_score
scoreboard players operation #test2 main_score *= *sin_y math
scoreboard players operation *offset_x_ main_score -= #test2 main_score
scoreboard players operation *offset_x_ main_score /= #1000 const



scoreboard players operation @s physical_things.mot_x = *offset_x_ main_score
scoreboard players operation @s physical_things.mot_y = *offset_y_ main_score
scoreboard players operation @s physical_things.mot_z = *offset_z_ main_score

tp @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] ~ ~ ~
execute store result score #x main_score run data get entity @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] Pos[0] 1000
execute store result score #y main_score run data get entity @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] Pos[1] 1000
execute store result score #z main_score run data get entity @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] Pos[2] 1000
execute store result entity @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] Pos[0] double 0.001 run scoreboard players operation #x main_score += *offset_x_ main_score
execute store result entity @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] Pos[1] double 0.001 run scoreboard players operation #y main_score += *offset_y_ main_score
execute store result entity @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] Pos[2] double 0.001 run scoreboard players operation #z main_score += *offset_z_ main_score
execute as @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] at @s facing entity @a feet run particle minecraft:dust{color:[0.0f,1.0f,0.0f],scale:3.0f} ^ ^ ^2 0 0 0 0 1 force
execute as @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] at @s facing entity @a feet run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:3.0f} ^ ^ ^1 0 0 0 0 1 force
execute as @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] at @s facing entity @a feet run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:3.0f} ^ ^ ^ 0 0 0 0 1 force
execute as @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] at @s facing entity @a feet run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:3.0f} ^ ^ ^-1 0 0 0 0 1 force
execute as @e[type=minecraft:marker,tag=midwut.test_pos-s_entity,limit=1] at @s facing entity @a feet run particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:3.0f} ^ ^ ^-2 0 0 0 0 1 force

