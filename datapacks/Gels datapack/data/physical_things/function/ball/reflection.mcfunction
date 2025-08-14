execute store result entity @s Pos[0] double 0.01 run scoreboard players get collision_x main_score
execute store result entity @s Pos[1] double 0.01 run scoreboard players get collision_y main_score
execute store result entity @s Pos[2] double 0.01 run scoreboard players get collision_z main_score
execute at @s run particle minecraft:flame

scoreboard players operation *coll_pos_x main_score = #sphere_x main_score
scoreboard players operation *coll_pos_x main_score -= collision_x main_score
scoreboard players operation *coll_pos_y main_score = #sphere_y main_score
scoreboard players operation *coll_pos_y main_score -= collision_y main_score
scoreboard players operation *coll_pos_z main_score = #sphere_z main_score
scoreboard players operation *coll_pos_z main_score -= collision_z main_score

function physical_things:test_block

#scoreboard players operation number math = dist main_score
#function midwut:help/math/root
#scoreboard players operation #n_x main_score /= out math
#scoreboard players operation #n_y main_score /= out math
#scoreboard players operation #n_z main_score /= out math

#
#scoreboard players operation collision_x main_score += #n_x main_score
#scoreboard players operation collision_y main_score += #n_y main_score
#scoreboard players operation collision_z main_score += #n_z main_score

#scoreboard players operation n_x main_score = #n_x main_score
#scoreboard players operation n_y main_score = #n_y main_score
#scoreboard players operation n_z main_score = #n_z main_score


#execute store result entity @s Pos[0] double 0.01 run scoreboard players get collision_x main_score
#execute store result entity @s Pos[1] double 0.01 run scoreboard players get collision_y main_score
#execute store result entity @s Pos[2] double 0.01 run scoreboard players get collision_z main_score
#execute at @s run particle soul_fire_flame
#



#execute store result score #sc_x main_score run scoreboard players get @e[type=armor_stand, tag=this.ball, limit=1] yumeko.ph.vx
#execute store result score #sc_y main_score run scoreboard players get @e[type=armor_stand, tag=this.ball, limit=1] yumeko.ph.vy
#execute store result score #sc_z main_score run scoreboard players get @e[type=armor_stand, tag=this.ball, limit=1] yumeko.ph.vz

#scoreboard players operation #n_x main_score *= #sc_x main_score
#scoreboard players operation #n_y main_score *= #sc_y main_score
#scoreboard players operation #n_z main_score *= #sc_z main_score
#scoreboard players operation #n_x main_score += #n_y main_score
#scoreboard players operation #n_x main_score += #n_z main_score
#
#scoreboard players operation test main_score = #n_x main_score
#
#scoreboard players operation #n_x main_score *= #2 const
#scoreboard players operation n_x main_score *= #n_x main_score
#scoreboard players operation n_y main_score *= #n_x main_score
#scoreboard players operation n_z main_score *= #n_x main_score
#scoreboard players operation n_x main_score /= #10000 const
#scoreboard players operation n_y main_score /= #10000 const
#scoreboard players operation n_z main_score /= #10000 const

#scoreboard players operation #sc_x main_score -= n_x main_score
#scoreboard players operation #sc_y main_score -= n_y main_score
#scoreboard players operation #sc_z main_score -= n_z main_score

#scoreboard players operation x yumeko.test = #sc_x main_score
#scoreboard players operation y yumeko.test = #sc_y main_score
#scoreboard players operation z yumeko.test = #sc_z main_score