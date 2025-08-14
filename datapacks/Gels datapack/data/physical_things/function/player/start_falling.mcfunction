#tag @s add falling
execute store result score @s physical_things.mot_y run data get storage midwut:main PlayerData.Pos[1] 1000
scoreboard players add @s physical_things.mot_y 600

scoreboard players operation @s physical_things.mot_x = #vx main_score
scoreboard players operation @s physical_things.mot_z = #vz main_score
scoreboard players operation @s physical_things.mot_x *= #2800 const
scoreboard players operation @s physical_things.mot_z *= #2800 const
