execute store result score @s physical_things.mot_y run data get storage midwut:main PlayerData.Pos[1] 1000
scoreboard players add @s physical_things.mot_y 100

scoreboard players operation @s physical_things.mot_x = #vx main_score
scoreboard players operation @s physical_things.mot_z = #vz main_score
scoreboard players operation @s physical_things.mot_x *= #3500 const
scoreboard players operation @s physical_things.mot_z *= #3500 const

