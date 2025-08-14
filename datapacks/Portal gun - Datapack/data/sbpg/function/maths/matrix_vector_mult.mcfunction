# Matrix-vector multiplication

#   in1       in2   out
# aa ab ac     a     a
# ba bb bc  *  b  =  b
# ca cb cc     c     c

# Scores should be in range -16384 to 16384, representing -1 to 1

scoreboard players operation product workspace = in1_aa workspace
scoreboard players operation product workspace *= in2_a workspace
scoreboard players operation out_a workspace = product workspace
scoreboard players operation product workspace = in1_ab workspace
scoreboard players operation product workspace *= in2_b workspace
scoreboard players operation out_a workspace += product workspace
scoreboard players operation product workspace = in1_ac workspace
scoreboard players operation product workspace *= in2_c workspace
scoreboard players operation out_a workspace += product workspace

scoreboard players operation product workspace = in1_ba workspace
scoreboard players operation product workspace *= in2_a workspace
scoreboard players operation out_b workspace = product workspace
scoreboard players operation product workspace = in1_bb workspace
scoreboard players operation product workspace *= in2_b workspace
scoreboard players operation out_b workspace += product workspace
scoreboard players operation product workspace = in1_bc workspace
scoreboard players operation product workspace *= in2_c workspace
scoreboard players operation out_b workspace += product workspace

scoreboard players operation product workspace = in1_ca workspace
scoreboard players operation product workspace *= in2_a workspace
scoreboard players operation out_c workspace = product workspace
scoreboard players operation product workspace = in1_cb workspace
scoreboard players operation product workspace *= in2_b workspace
scoreboard players operation out_c workspace += product workspace
scoreboard players operation product workspace = in1_cc workspace
scoreboard players operation product workspace *= in2_c workspace
scoreboard players operation out_c workspace += product workspace

scoreboard players operation out_a workspace /= 49152 constant
scoreboard players operation out_b workspace /= 49152 constant
scoreboard players operation out_c workspace /= 49152 constant