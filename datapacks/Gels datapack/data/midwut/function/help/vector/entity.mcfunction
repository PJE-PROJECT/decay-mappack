

data modify storage midwut:main Rotation set from entity @s Rotation
execute store result score #Rotation.Y main_score run data get storage midwut:main Rotation[0] 1000
execute store result score #Rotation.X main_score run data get storage midwut:main Rotation[1] 1000
execute if score #Rotation.Y main_score matches ..-1 run scoreboard players add #Rotation.Y main_score 360000
execute if score #Rotation.X main_score matches ..-1 run scoreboard players add #Rotation.X main_score 360000

scoreboard players operation #IN:angle math = #Rotation.X main_score
function midwut:help/math/trig_func/sin
function midwut:help/math/trig_func/cos

scoreboard players operation #Vec.X math = #OUT:cos math
scoreboard players operation #Vec.Z math = #OUT:cos math
scoreboard players operation #Vec.Y math = #OUT:sin math
scoreboard players operation #Vec.Y math *= #-1 const

scoreboard players operation #IN:angle math = #Rotation.Y main_score
function midwut:help/math/trig_func/sin
function midwut:help/math/trig_func/cos

scoreboard players operation #Vec.X math *= #OUT:sin math
scoreboard players operation #Vec.X math /= #-10000 const
scoreboard players operation #Vec.Z math *= #OUT:cos math
scoreboard players operation #Vec.Z math /= #10000 const
