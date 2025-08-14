
scoreboard players operation #IN:angle math = #x main_score
scoreboard players operation #IN:angle math /= #2 const
function midwut:help/math/trig_func/sin
function midwut:help/math/trig_func/cos
scoreboard players operation #sin_z main_score = #OUT:sin math
scoreboard players operation #cos_z main_score = #OUT:cos math

scoreboard players operation #IN:angle math = #y main_score
scoreboard players operation #IN:angle math /= #2 const
function midwut:help/math/trig_func/sin
function midwut:help/math/trig_func/cos
scoreboard players operation #sin_y main_score = #OUT:sin math
scoreboard players operation #cos_y main_score = #OUT:cos math

scoreboard players operation #IN:angle math = #z main_score
scoreboard players operation #IN:angle math /= #2 const
function midwut:help/math/trig_func/sin
function midwut:help/math/trig_func/cos
scoreboard players operation #sin_x main_score = #OUT:sin math
scoreboard players operation #cos_x main_score = #OUT:cos math

execute if score #Facing main_score matches 2..5 run tp @s ~ ~-0.5 ~
execute if score #Facing main_score matches 2..5 run data modify storage midwut:main EntityData set value {transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.503f,0.503f,0.503f]},item_display:"fixed",height:3.0f,width:2.5f}
execute if score #Facing main_score matches 0 run tp @s ~ ~-2.5 ~
execute if score #Facing main_score matches 0 run data modify storage midwut:main EntityData set value {transformation:{translation:[0.0f,2.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.503f,0.503f,0.503f]},item_display:"fixed",height:5.0f,width:2.5f}
execute if score #Facing main_score matches 1 run data modify storage midwut:main EntityData set value {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.503f,0.503f,0.503f]},item_display:"fixed",height:2.5f,width:2.5f}
#data modify storage midwut:main EntityData set value {transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.503f,0.503f,0.503f]},item_display:"fixed",height:2.5f,width:2.5f}
data modify storage midwut:main EntityData.item set from storage midwut:main Data.Item
data modify storage midwut:main EntityData.Tags set from storage midwut:main Data.Tags

scoreboard players operation #test main_score = #sin_z main_score
scoreboard players operation #test main_score *= #cos_y main_score
scoreboard players operation #test main_score /= #10000 const
scoreboard players operation #test2 main_score = #cos_z main_score
scoreboard players operation #test2 main_score *= #sin_y main_score
scoreboard players operation #test2 main_score /= #10000 const
scoreboard players operation #test3 main_score = #cos_z main_score
scoreboard players operation #test3 main_score *= #cos_y main_score
scoreboard players operation #test3 main_score /= #10000 const
scoreboard players operation #test4 main_score = #sin_z main_score
scoreboard players operation #test4 main_score *= #sin_y main_score
scoreboard players operation #test4 main_score /= #10000 const

scoreboard players operation #x main_score = #test main_score
scoreboard players operation #y main_score = #test2 main_score
scoreboard players operation #z main_score = #test3 main_score
scoreboard players operation #w main_score = #test3 main_score

#tellraw @a [{"score":{"name": "#x","objective": "main_score"}}," ",{"score":{"name": "#y","objective": "main_score"}}," ",{"score":{"name": "#z","objective": "main_score"}}," ",{"score":{"name": "#w","objective": "main_score"}}]

scoreboard players operation #test2 main_score *= #sin_x main_score
scoreboard players operation #x main_score *= #cos_x main_score
scoreboard players operation #x main_score += #test2 main_score

scoreboard players operation #test main_score *= #sin_x main_score
scoreboard players operation #y main_score *= #cos_x main_score
scoreboard players operation #y main_score -= #test main_score

scoreboard players operation #test main_score = #test4 main_score
scoreboard players operation #test4 main_score *= #cos_x main_score
scoreboard players operation #z main_score *= #sin_x main_score
scoreboard players operation #z main_score -= #test4 main_score

scoreboard players operation #test main_score *= #sin_x main_score
scoreboard players operation #w main_score *= #cos_x main_score
scoreboard players operation #w main_score += #test main_score

#tellraw @a [{"score":{"name": "#x","objective": "main_score"}}," ",{"score":{"name": "#y","objective": "main_score"}}," ",{"score":{"name": "#z","objective": "main_score"}}," ",{"score":{"name": "#w","objective": "main_score"}}]

execute store result storage midwut:main EntityData.transformation.left_rotation[0] float 0.0001 run scoreboard players operation #x main_score /= #10000 const
execute store result storage midwut:main EntityData.transformation.left_rotation[1] float 0.0001 run scoreboard players operation #y main_score /= #10000 const
execute store result storage midwut:main EntityData.transformation.left_rotation[2] float 0.0001 run scoreboard players operation #z main_score /= #10000 const
execute store result storage midwut:main EntityData.transformation.left_rotation[3] float 0.0001 run scoreboard players operation #w main_score /= #10000 const

data modify entity @s {} merge from storage midwut:main EntityData
