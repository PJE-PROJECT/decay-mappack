# Matrix-matrix multiplication

#   in1          in2          out
# aa ab ac     aa ab ac     aa ab ac
# ba bb bc  *  ba bb bc  =  ba bb bc
# ca cb cc     ca cb cc     ca cb cc

# Scores should be in range -16384 to 16384, representing -1 to 1

scoreboard players operation product workspace = in1_aa workspace
scoreboard players operation product workspace *= in2_aa workspace
scoreboard players operation out_aa workspace = product workspace
scoreboard players operation product workspace = in1_ab workspace
scoreboard players operation product workspace *= in2_ba workspace
scoreboard players operation out_aa workspace += product workspace
scoreboard players operation product workspace = in1_ac workspace
scoreboard players operation product workspace *= in2_ca workspace
scoreboard players operation out_aa workspace += product workspace

scoreboard players operation product workspace = in1_aa workspace
scoreboard players operation product workspace *= in2_ab workspace
scoreboard players operation out_ab workspace = product workspace
scoreboard players operation product workspace = in1_ab workspace
scoreboard players operation product workspace *= in2_bb workspace
scoreboard players operation out_ab workspace += product workspace
scoreboard players operation product workspace = in1_ac workspace
scoreboard players operation product workspace *= in2_cb workspace
scoreboard players operation out_ab workspace += product workspace

scoreboard players operation product workspace = in1_aa workspace
scoreboard players operation product workspace *= in2_ac workspace
scoreboard players operation out_ac workspace = product workspace
scoreboard players operation product workspace = in1_ab workspace
scoreboard players operation product workspace *= in2_bc workspace
scoreboard players operation out_ac workspace += product workspace
scoreboard players operation product workspace = in1_ac workspace
scoreboard players operation product workspace *= in2_cc workspace
scoreboard players operation out_ac workspace += product workspace



scoreboard players operation product workspace = in1_ba workspace
scoreboard players operation product workspace *= in2_aa workspace
scoreboard players operation out_ba workspace = product workspace
scoreboard players operation product workspace = in1_bb workspace
scoreboard players operation product workspace *= in2_ba workspace
scoreboard players operation out_ba workspace += product workspace
scoreboard players operation product workspace = in1_bc workspace
scoreboard players operation product workspace *= in2_ca workspace
scoreboard players operation out_ba workspace += product workspace

scoreboard players operation product workspace = in1_ba workspace
scoreboard players operation product workspace *= in2_ab workspace
scoreboard players operation out_bb workspace = product workspace
scoreboard players operation product workspace = in1_bb workspace
scoreboard players operation product workspace *= in2_bb workspace
scoreboard players operation out_bb workspace += product workspace
scoreboard players operation product workspace = in1_bc workspace
scoreboard players operation product workspace *= in2_cb workspace
scoreboard players operation out_bb workspace += product workspace

scoreboard players operation product workspace = in1_ba workspace
scoreboard players operation product workspace *= in2_ac workspace
scoreboard players operation out_bc workspace = product workspace
scoreboard players operation product workspace = in1_bb workspace
scoreboard players operation product workspace *= in2_bc workspace
scoreboard players operation out_bc workspace += product workspace
scoreboard players operation product workspace = in1_bc workspace
scoreboard players operation product workspace *= in2_cc workspace
scoreboard players operation out_bc workspace += product workspace



scoreboard players operation product workspace = in1_ca workspace
scoreboard players operation product workspace *= in2_aa workspace
scoreboard players operation out_ca workspace = product workspace
scoreboard players operation product workspace = in1_cb workspace
scoreboard players operation product workspace *= in2_ba workspace
scoreboard players operation out_ca workspace += product workspace
scoreboard players operation product workspace = in1_cc workspace
scoreboard players operation product workspace *= in2_ca workspace
scoreboard players operation out_ca workspace += product workspace

scoreboard players operation product workspace = in1_ca workspace
scoreboard players operation product workspace *= in2_ab workspace
scoreboard players operation out_cb workspace = product workspace
scoreboard players operation product workspace = in1_cb workspace
scoreboard players operation product workspace *= in2_bb workspace
scoreboard players operation out_cb workspace += product workspace
scoreboard players operation product workspace = in1_cc workspace
scoreboard players operation product workspace *= in2_cb workspace
scoreboard players operation out_cb workspace += product workspace

scoreboard players operation product workspace = in1_ca workspace
scoreboard players operation product workspace *= in2_ac workspace
scoreboard players operation out_cc workspace = product workspace
scoreboard players operation product workspace = in1_cb workspace
scoreboard players operation product workspace *= in2_bc workspace
scoreboard players operation out_cc workspace += product workspace
scoreboard players operation product workspace = in1_cc workspace
scoreboard players operation product workspace *= in2_cc workspace
scoreboard players operation out_cc workspace += product workspace



scoreboard players operation out_aa workspace /= 49152 constant
scoreboard players operation out_ab workspace /= 49152 constant
scoreboard players operation out_ac workspace /= 49152 constant
scoreboard players operation out_ba workspace /= 49152 constant
scoreboard players operation out_bb workspace /= 49152 constant
scoreboard players operation out_bc workspace /= 49152 constant
scoreboard players operation out_ca workspace /= 49152 constant
scoreboard players operation out_cb workspace /= 49152 constant
scoreboard players operation out_cc workspace /= 49152 constant