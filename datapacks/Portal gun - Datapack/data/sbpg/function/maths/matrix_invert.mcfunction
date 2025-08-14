# Matrix inversion

# aa ab ac
# ba bb bc
# ca cb cc

# Calculate adjugate
scoreboard players operation @s sbpg.inverse_aa = @s sbpg.matrix_bb
scoreboard players operation @s sbpg.inverse_aa *= @s sbpg.matrix_cc
scoreboard players operation product workspace = @s sbpg.matrix_cb
scoreboard players operation product workspace *= @s sbpg.matrix_bc
scoreboard players operation @s sbpg.inverse_aa -= product workspace

scoreboard players operation @s sbpg.inverse_ba = @s sbpg.matrix_ca
scoreboard players operation @s sbpg.inverse_ba *= @s sbpg.matrix_bc
scoreboard players operation product workspace = @s sbpg.matrix_ba
scoreboard players operation product workspace *= @s sbpg.matrix_cc
scoreboard players operation @s sbpg.inverse_ba -= product workspace

scoreboard players operation @s sbpg.inverse_ca = @s sbpg.matrix_ba
scoreboard players operation @s sbpg.inverse_ca *= @s sbpg.matrix_cb
scoreboard players operation product workspace = @s sbpg.matrix_ca
scoreboard players operation product workspace *= @s sbpg.matrix_bb
scoreboard players operation @s sbpg.inverse_ca -= product workspace

scoreboard players operation @s sbpg.inverse_ab = @s sbpg.matrix_cb
scoreboard players operation @s sbpg.inverse_ab *= @s sbpg.matrix_ac
scoreboard players operation product workspace = @s sbpg.matrix_ab
scoreboard players operation product workspace *= @s sbpg.matrix_cc
scoreboard players operation @s sbpg.inverse_ab -= product workspace

scoreboard players operation @s sbpg.inverse_bb = @s sbpg.matrix_aa
scoreboard players operation @s sbpg.inverse_bb *= @s sbpg.matrix_cc
scoreboard players operation product workspace = @s sbpg.matrix_ca
scoreboard players operation product workspace *= @s sbpg.matrix_ac
scoreboard players operation @s sbpg.inverse_bb -= product workspace

scoreboard players operation @s sbpg.inverse_cb = @s sbpg.matrix_ca
scoreboard players operation @s sbpg.inverse_cb *= @s sbpg.matrix_ab
scoreboard players operation product workspace = @s sbpg.matrix_aa
scoreboard players operation product workspace *= @s sbpg.matrix_cb
scoreboard players operation @s sbpg.inverse_cb -= product workspace

scoreboard players operation @s sbpg.inverse_ac = @s sbpg.matrix_ab
scoreboard players operation @s sbpg.inverse_ac *= @s sbpg.matrix_bc
scoreboard players operation product workspace = @s sbpg.matrix_bb
scoreboard players operation product workspace *= @s sbpg.matrix_ac
scoreboard players operation @s sbpg.inverse_ac -= product workspace

scoreboard players operation @s sbpg.inverse_bc = @s sbpg.matrix_ba
scoreboard players operation @s sbpg.inverse_bc *= @s sbpg.matrix_ac
scoreboard players operation product workspace = @s sbpg.matrix_aa
scoreboard players operation product workspace *= @s sbpg.matrix_bc
scoreboard players operation @s sbpg.inverse_bc -= product workspace

scoreboard players operation @s sbpg.inverse_cc = @s sbpg.matrix_aa
scoreboard players operation @s sbpg.inverse_cc *= @s sbpg.matrix_bb
scoreboard players operation product workspace = @s sbpg.matrix_ba
scoreboard players operation product workspace *= @s sbpg.matrix_ab
scoreboard players operation @s sbpg.inverse_cc -= product workspace

# Determinant (2x2 dets already calculated)
# scoreboard players operation det_aa workspace = @s sbpg.inverse_aa
# scoreboard players operation det_aa workspace *= @s sbpg.matrix_aa
# 
# scoreboard players operation det_ab workspace = @s sbpg.inverse_ba
# scoreboard players operation det_ab workspace *= @s sbpg.matrix_ab
# 
# scoreboard players operation det_ac workspace = @s sbpg.inverse_ca
# scoreboard players operation det_ac workspace *= @s sbpg.matrix_ac
# 
# scoreboard players operation det workspace = det_aa workspace
# scoreboard players operation det workspace += det_ab workspace
# scoreboard players operation det workspace += det_ac workspace
# 
# tellraw @a ["det",{"score":{"name":"det","objective":"workspace"}}]

# Scale down to 0-16384 range
scoreboard players operation @s sbpg.inverse_aa /= 16384 constant
scoreboard players operation @s sbpg.inverse_ab /= 16384 constant
scoreboard players operation @s sbpg.inverse_ac /= 16384 constant
scoreboard players operation @s sbpg.inverse_ba /= 16384 constant
scoreboard players operation @s sbpg.inverse_bb /= 16384 constant
scoreboard players operation @s sbpg.inverse_bc /= 16384 constant
scoreboard players operation @s sbpg.inverse_ca /= 16384 constant
scoreboard players operation @s sbpg.inverse_cb /= 16384 constant
scoreboard players operation @s sbpg.inverse_cc /= 16384 constant