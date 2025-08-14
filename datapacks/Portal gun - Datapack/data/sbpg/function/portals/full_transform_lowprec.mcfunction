# Lowprec: Intended for |x| < 2048 (e.g: pos-diff coordinates)

# Transform x, y, z from entry portal's basis into standard basis
scoreboard players operation product workspace = inverse_aa workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= x workspace
scoreboard players operation standard_x workspace = product workspace
scoreboard players operation product workspace = inverse_ab workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= y workspace
scoreboard players operation standard_x workspace += product workspace
scoreboard players operation product workspace = inverse_ac workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= z workspace
scoreboard players operation standard_x workspace += product workspace

scoreboard players operation product workspace = inverse_ba workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= x workspace
scoreboard players operation standard_y workspace = product workspace
scoreboard players operation product workspace = inverse_bb workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= y workspace
scoreboard players operation standard_y workspace += product workspace
scoreboard players operation product workspace = inverse_bc workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= z workspace
scoreboard players operation standard_y workspace += product workspace

scoreboard players operation product workspace = inverse_ca workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= x workspace
scoreboard players operation standard_z workspace = product workspace
scoreboard players operation product workspace = inverse_cb workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= y workspace
scoreboard players operation standard_z workspace += product workspace
scoreboard players operation product workspace = inverse_cc workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= z workspace
scoreboard players operation standard_z workspace += product workspace

scoreboard players operation standard_x workspace /= 1024 constant
scoreboard players operation standard_y workspace /= 1024 constant
scoreboard players operation standard_z workspace /= 1024 constant
scoreboard players operation standard_x workspace *= -1 constant
scoreboard players operation standard_z workspace *= -1 constant

#tellraw @a ["standard x:",{"score":{"name":"standard_x","objective":"workspace"}}]
#tellraw @a ["standard y:",{"score":{"name":"standard_y","objective":"workspace"}}]
#tellraw @a ["standard z:",{"score":{"name":"standard_z","objective":"workspace"}}]

# Transform x, y, z from standard basis into exit portal's basis
scoreboard players operation product workspace = matrix_aa workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= standard_x workspace
scoreboard players operation x workspace = product workspace
scoreboard players operation product workspace = matrix_ab workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= standard_y workspace
scoreboard players operation x workspace += product workspace
scoreboard players operation product workspace = matrix_ac workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= standard_z workspace
scoreboard players operation x workspace += product workspace

scoreboard players operation product workspace = matrix_ba workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= standard_x workspace
scoreboard players operation y workspace = product workspace
scoreboard players operation product workspace = matrix_bb workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= standard_y workspace
scoreboard players operation y workspace += product workspace
scoreboard players operation product workspace = matrix_bc workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= standard_z workspace
scoreboard players operation y workspace += product workspace

scoreboard players operation product workspace = matrix_ca workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= standard_x workspace
scoreboard players operation z workspace = product workspace
scoreboard players operation product workspace = matrix_cb workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= standard_y workspace
scoreboard players operation z workspace += product workspace
scoreboard players operation product workspace = matrix_cc workspace
scoreboard players operation product workspace /= 16 constant
scoreboard players operation product workspace *= standard_z workspace
scoreboard players operation z workspace += product workspace

scoreboard players operation x workspace /= 1024 constant
scoreboard players operation y workspace /= 1024 constant
scoreboard players operation z workspace /= 1024 constant
