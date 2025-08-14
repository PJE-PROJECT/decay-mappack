
tag @s remove gel_stand_orange
tag @s add gel_cooldown
attribute @s minecraft:generic.movement_speed base set 0.09

scoreboard players set #test main_score 1

execute store result score #y main_score run data get entity @s Pos[1] 1000

scoreboard players operation @s[tag=new_y_pos] physical_things.mot_y = @s physical_things.mot_y2
tag @s[tag=new_y_pos] remove new_y_pos

scoreboard players set #chech_dos main_score 0
execute if block ~0.3 ~-0.1 ~0.3 minecraft:dark_oak_stairs run scoreboard players set #chech_dos main_score 1
execute if score #chech_dos main_score matches 0 if block ~0.3 ~-0.1 ~-0.3 minecraft:dark_oak_stairs run scoreboard players set #chech_dos main_score 1
execute if score #chech_dos main_score matches 0 if block ~-0.3 ~-0.1 ~0.3 minecraft:dark_oak_stairs run scoreboard players set #chech_dos main_score 1
execute if score #chech_dos main_score matches 0 if block ~-0.3 ~-0.1 ~-0.3 minecraft:dark_oak_stairs run scoreboard players set #chech_dos main_score 1

execute if score #chech_dos main_score matches 1 positioned ~ ~-0.1 ~ run function physical_things:player/45_jump




scoreboard players operation @s physical_things.mot_y -= #y main_score
scoreboard players operation @s physical_things.mot_y > #4000 const

scoreboard players operation $x delta.api.launch = #vx main_score
scoreboard players operation $z delta.api.launch = #vz main_score
scoreboard players operation $x delta.api.launch *= #28 const
scoreboard players operation $z delta.api.launch *= #28 const

playsound minecraft:player_bounce_jump_paint_01 ambient @a ~ ~ ~ 0.5 1 0
function physical_things:player/set_motion_after_fall


scoreboard players add @s physical_things.mot_y 100



function delta:api/launch_xyz



