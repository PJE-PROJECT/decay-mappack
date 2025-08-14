execute store result score #min_x main_score run data get entity @s Pos[0] 100
execute store result score #min_y main_score run data get entity @s Pos[1] 100
execute store result score #min_z main_score run data get entity @s Pos[2] 100

# max = collision
scoreboard players operation collision_x main_score = #min_x main_score
scoreboard players add collision_x main_score 100
scoreboard players operation collision_y main_score = #min_y main_score
scoreboard players add collision_y main_score 100
scoreboard players operation collision_z main_score = #min_z main_score
scoreboard players add collision_z main_score 100

scoreboard players operation collision_x main_score < #sphere_x main_score
scoreboard players operation collision_x main_score > #min_x main_score
scoreboard players operation collision_y main_score < #sphere_y main_score
scoreboard players operation collision_y main_score > #min_y main_score
scoreboard players operation collision_z main_score < #sphere_z main_score
scoreboard players operation collision_z main_score > #min_z main_score

scoreboard players operation dist main_score = collision_x main_score
scoreboard players operation dist main_score -= #sphere_x main_score
scoreboard players operation dist main_score *= dist main_score
scoreboard players operation #dist_y main_score = collision_y main_score
scoreboard players operation #dist_y main_score -= #sphere_y main_score
scoreboard players operation #dist_y main_score *= #dist_y main_score
scoreboard players operation #dist_z main_score = collision_z main_score
scoreboard players operation #dist_z main_score -= #sphere_z main_score
scoreboard players operation #dist_z main_score *= #dist_z main_score
scoreboard players operation dist main_score += #dist_y main_score
scoreboard players operation dist main_score += #dist_z main_score

execute if score dist main_score matches ..2500 run function physical_things:ball/reflection

kill @s