# Get
# tellraw @a ["initial x",{"score":{"name":"motion_x","objective":"workspace"}}]
# tellraw @a ["initial y",{"score":{"name":"motion_y","objective":"workspace"}}]
# tellraw @a ["initial z",{"score":{"name":"motion_z","objective":"workspace"}}]

# Transform into exit portal's basis
scoreboard players operation product workspace = inverse_aa workspace
scoreboard players operation product workspace *= motion_x workspace
scoreboard players operation standard_x workspace = product workspace
scoreboard players operation product workspace = inverse_ab workspace
scoreboard players operation product workspace *= motion_y workspace
scoreboard players operation standard_x workspace += product workspace
scoreboard players operation product workspace = inverse_ac workspace
scoreboard players operation product workspace *= motion_z workspace
scoreboard players operation standard_x workspace += product workspace

scoreboard players operation product workspace = inverse_ba workspace
scoreboard players operation product workspace *= motion_x workspace
scoreboard players operation standard_y workspace = product workspace
scoreboard players operation product workspace = inverse_bb workspace
scoreboard players operation product workspace *= motion_y workspace
scoreboard players operation standard_y workspace += product workspace
scoreboard players operation product workspace = inverse_bc workspace
scoreboard players operation product workspace *= motion_z workspace
scoreboard players operation standard_y workspace += product workspace

scoreboard players operation product workspace = inverse_ca workspace
scoreboard players operation product workspace *= motion_x workspace
scoreboard players operation standard_z workspace = product workspace
scoreboard players operation product workspace = inverse_cb workspace
scoreboard players operation product workspace *= motion_y workspace
scoreboard players operation standard_z workspace += product workspace
scoreboard players operation product workspace = inverse_cc workspace
scoreboard players operation product workspace *= motion_z workspace
scoreboard players operation standard_z workspace += product workspace

scoreboard players operation standard_x workspace /= 16384 constant
scoreboard players operation standard_y workspace /= 16384 constant
scoreboard players operation standard_z workspace /= 16384 constant
# tellraw @a ["standard_x (left)",{"score":{"name":"standard_x","objective":"workspace"}}]
# tellraw @a ["standard_y (up)",{"score":{"name":"standard_y","objective":"workspace"}}]
# tellraw @a ["standard_z (forward)",{"score":{"name":"standard_z","objective":"workspace"}}]
scoreboard players operation standard_x workspace *= -1 constant
scoreboard players operation standard_z workspace *= -1 constant


scoreboard players operation product workspace = matrix_aa workspace
scoreboard players operation product workspace *= standard_x workspace
scoreboard players operation motion_x workspace = product workspace
scoreboard players operation product workspace = matrix_ab workspace
scoreboard players operation product workspace *= standard_y workspace
scoreboard players operation motion_x workspace += product workspace
scoreboard players operation product workspace = matrix_ac workspace
scoreboard players operation product workspace *= standard_z workspace
scoreboard players operation motion_x workspace += product workspace

scoreboard players operation product workspace = matrix_ba workspace
scoreboard players operation product workspace *= standard_x workspace
scoreboard players operation motion_y workspace = product workspace
scoreboard players operation product workspace = matrix_bb workspace
scoreboard players operation product workspace *= standard_y workspace
scoreboard players operation motion_y workspace += product workspace
scoreboard players operation product workspace = matrix_bc workspace
scoreboard players operation product workspace *= standard_z workspace
scoreboard players operation motion_y workspace += product workspace

scoreboard players operation product workspace = matrix_ca workspace
scoreboard players operation product workspace *= standard_x workspace
scoreboard players operation motion_z workspace = product workspace
scoreboard players operation product workspace = matrix_cb workspace
scoreboard players operation product workspace *= standard_y workspace
scoreboard players operation motion_z workspace += product workspace
scoreboard players operation product workspace = matrix_cc workspace
scoreboard players operation product workspace *= standard_z workspace
scoreboard players operation motion_z workspace += product workspace

scoreboard players operation motion_x workspace /= 16384 constant
scoreboard players operation motion_y workspace /= 16384 constant
scoreboard players operation motion_z workspace /= 16384 constant

#tellraw @a ["transformed x",{"score":{"name":"motion_x","objective":"workspace"}}]
#tellraw @a ["transformed y",{"score":{"name":"motion_y","objective":"workspace"}}]
#tellraw @a ["transformed z",{"score":{"name":"motion_z","objective":"workspace"}}]

# Store back
execute store result entity @s Motion[0] double 0.00008103515625 run scoreboard players get motion_x workspace
execute store result entity @s Motion[1] double 0.00008103515625 run scoreboard players get motion_y workspace
execute store result entity @s Motion[2] double 0.00008103515625 run scoreboard players get motion_z workspace

tag @s add sbpg.hyperventilate
# TODO: Air-merge once instead? Then I can change hyperventilate code to only affect AEC click-detectors, and only be in player-holding func