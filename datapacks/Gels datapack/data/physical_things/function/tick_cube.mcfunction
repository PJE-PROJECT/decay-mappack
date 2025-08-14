
tag @s add gel_stand_blue

scoreboard players operation #id_test main_score = @s physical_things.player_id




data modify storage midwut:main PlayerData set from entity @s

execute store result score #vx main_score run data get storage midwut:main PlayerData.Pos[0] 1000
execute store result score #vy main_score run data get storage midwut:main PlayerData.Pos[1] 1000
execute store result score #vz main_score run data get storage midwut:main PlayerData.Pos[2] 1000


scoreboard players operation #vx main_score -= @s physical_things.pos_x
scoreboard players operation #vy main_score -= @s physical_things.pos_y
scoreboard players operation #vz main_score -= @s physical_things.pos_z
scoreboard players operation #vx_ main_score = @s physical_things.vx
scoreboard players operation #vy_ main_score = @s physical_things.vy
scoreboard players operation #vz_ main_score = @s physical_things.vz
execute unless score #vy main_score matches 0 unless score #vy_ main_score matches 0 run tag @s add same_pos_y
execute if score #vy main_score matches 0 unless score #vy_ main_score matches 0 if entity @s[tag=same_pos_y] run function physical_things:fix_pos_y

execute store result score #flying main_score run data get storage midwut:main PlayerData.abilities.flying
execute if score #flying main_score matches 0 if score @s physical_things.sneak matches 1.. run scoreboard players set #flying main_score 1
execute if score #flying main_score matches 0 run function physical_things:player/falling_main
execute if score #vy main_score matches ..0 run function physical_things:player/save_motion

scoreboard players set @s[scores={physical_things.sneak=1..}] physical_things.sneak 0
scoreboard players set @s[scores={physical_things.jump=1..}] physical_things.jump 0

execute store result score @s physical_things.pos_x run data get storage midwut:main PlayerData.Pos[0] 1000
execute store result score @s physical_things.pos_y run data get storage midwut:main PlayerData.Pos[1] 1000
execute store result score @s physical_things.pos_z run data get storage midwut:main PlayerData.Pos[2] 1000
scoreboard players operation @s physical_things.vx = #vx main_score
scoreboard players operation @s physical_things.vy = #vy main_score
scoreboard players operation @s physical_things.vz = #vz main_score



execute if entity @e[type=minecraft:item_frame,distance=..0.8,tag=blue_gel,tag=D,limit=1] run function physical_things:player/end_falling



#tellraw @s [{"score":{"name": "#vy","objective": "main_score"}}," ",{"score":{"name": "#vy_","objective": "main_score"}}]

tag @s add gel_stand_blue