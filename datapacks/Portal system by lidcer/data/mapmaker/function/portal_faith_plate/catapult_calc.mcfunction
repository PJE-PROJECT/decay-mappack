execute store result score @s position_x run data get entity @s Pos[0]
execute store result score @s position_y run data get entity @s Pos[1]
execute store result score @s position_z run data get entity @s Pos[2]

scoreboard players operation @s position_x -= @s point_x
scoreboard players operation @s position_y -= @s point_y
scoreboard players operation @s position_z -= @s point_z

scoreboard players operation #X math = @s position_x
scoreboard players operation #Z math = @s position_z

scoreboard players operation #X math *= #X math
scoreboard players operation #Z math *= #Z math
scoreboard players operation #X math += #Z math
scoreboard players operation @s hypotenuse = #X math

scoreboard players operation #number math = @s hypotenuse
function midwut:help/math/sqrt_v2
scoreboard players operation @s hypotenuse = #out math

scoreboard players operation #Z math = @s position_z
scoreboard players operation #Z math += #1 const
scoreboard players operation #Z math *= #10000 const
scoreboard players operation #Z math /= @s hypotenuse

scoreboard players operation #IN:angle math = #Z math

function midwut:help/math/trig_func/arc/sin
execute if score @s position_x matches 1.. run scoreboard players operation #OUT:arccos math *= #-1 const
execute if score @s position_z matches 0.. if score @s position_x matches ..0 run scoreboard players operation #OUT:arccos math -= #1700 const
execute if score @s position_z matches 0.. if score @s position_x matches 1.. run scoreboard players operation #OUT:arccos math -= #1900 const
#execute as @s store result entity @s Rotation.[0] float 0.1 run scoreboard players get #OUT:arccos math

execute as @e[tag=plate_teh] at @s facing entity @e[tag=plate_setup_point_new] eyes run tp @s ~ ~ ~ ~ ~

function midwut:help/vector/entity
scoreboard players operation #Vec.X math /= #8 const
scoreboard players operation #Vec.Z math /= #8 const
scoreboard players operation #Vec.X math *= @s hypotenuse
scoreboard players operation #Vec.Z math *= @s hypotenuse

scoreboard players set #Vec.Y math 5000
scoreboard players operation #Vec.Y math += @s y_force
scoreboard players operation @s position_y *= #-1000 const
scoreboard players operation #Vec.Y math += @s position_y

scoreboard players operation @s vec.x = #Vec.X math
scoreboard players operation @s vec.y = #Vec.Y math
scoreboard players operation @s vec.z = #Vec.Z math

#execute if entity @e[tag=!faith_plate,distance=..1,limit=1] run function mapmaker:portal_faith_plate/catapult_force