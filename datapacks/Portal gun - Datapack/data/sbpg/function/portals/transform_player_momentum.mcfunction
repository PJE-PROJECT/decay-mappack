# Reset momentum
tp @s @s

# Switch gamemode
tag @s[gamemode=survival] add sbpg.was_survival
tag @s[gamemode=creative] add sbpg.was_creative
tag @s[gamemode=adventure] add sbpg.was_adventure
tag @s[gamemode=spectator] add sbpg.was_spectator
gamerule sendCommandFeedback false
gamemode creative @s

gamerule sendCommandFeedback true

# Transform into exit portal's basis
scoreboard players operation product workspace = inverse_aa workspace
scoreboard players operation product workspace *= diff_x workspace
scoreboard players operation standard_x workspace = product workspace
scoreboard players operation product workspace = inverse_ab workspace
scoreboard players operation product workspace *= diff_y workspace
scoreboard players operation standard_x workspace += product workspace
scoreboard players operation product workspace = inverse_ac workspace
scoreboard players operation product workspace *= diff_z workspace
scoreboard players operation standard_x workspace += product workspace

scoreboard players operation product workspace = inverse_ba workspace
scoreboard players operation product workspace *= diff_x workspace
scoreboard players operation standard_y workspace = product workspace
scoreboard players operation product workspace = inverse_bb workspace
scoreboard players operation product workspace *= diff_y workspace
scoreboard players operation standard_y workspace += product workspace
scoreboard players operation product workspace = inverse_bc workspace
scoreboard players operation product workspace *= diff_z workspace
scoreboard players operation standard_y workspace += product workspace

scoreboard players operation product workspace = inverse_ca workspace
scoreboard players operation product workspace *= diff_x workspace
scoreboard players operation standard_z workspace = product workspace
scoreboard players operation product workspace = inverse_cb workspace
scoreboard players operation product workspace *= diff_y workspace
scoreboard players operation standard_z workspace += product workspace
scoreboard players operation product workspace = inverse_cc workspace
scoreboard players operation product workspace *= diff_z workspace
scoreboard players operation standard_z workspace += product workspace

scoreboard players operation standard_x workspace /= 16384 constant
scoreboard players operation standard_y workspace /= 16384 constant
scoreboard players operation standard_z workspace /= 16384 constant
scoreboard players operation standard_x workspace *= -1 constant
scoreboard players operation standard_z workspace *= -1 constant


scoreboard players operation product workspace = matrix_aa workspace
scoreboard players operation product workspace *= standard_x workspace
scoreboard players operation diff_x workspace = product workspace
scoreboard players operation product workspace = matrix_ab workspace
scoreboard players operation product workspace *= standard_y workspace
scoreboard players operation diff_x workspace += product workspace
scoreboard players operation product workspace = matrix_ac workspace
scoreboard players operation product workspace *= standard_z workspace
scoreboard players operation diff_x workspace += product workspace

scoreboard players operation product workspace = matrix_ba workspace
scoreboard players operation product workspace *= standard_x workspace
scoreboard players operation diff_y workspace = product workspace
scoreboard players operation product workspace = matrix_bb workspace
scoreboard players operation product workspace *= standard_y workspace
scoreboard players operation diff_y workspace += product workspace
scoreboard players operation product workspace = matrix_bc workspace
scoreboard players operation product workspace *= standard_z workspace
scoreboard players operation diff_y workspace += product workspace

scoreboard players operation product workspace = matrix_ca workspace
scoreboard players operation product workspace *= standard_x workspace
scoreboard players operation diff_z workspace = product workspace
scoreboard players operation product workspace = matrix_cb workspace
scoreboard players operation product workspace *= standard_y workspace
scoreboard players operation diff_z workspace += product workspace
scoreboard players operation product workspace = matrix_cc workspace
scoreboard players operation product workspace *= standard_z workspace
scoreboard players operation diff_z workspace += product workspace

scoreboard players operation diff_x workspace /= 16384 constant
scoreboard players operation diff_y workspace /= 16384 constant
scoreboard players operation diff_z workspace /= 16384 constant

# Apply new motion with explosions, after scaling down to the range it expects
scoreboard players operation x_dir workspace = diff_x workspace
scoreboard players operation y_dir workspace = diff_y workspace
scoreboard players operation z_dir workspace = diff_z workspace
scoreboard players operation x_dir workspace /= 64 constant
scoreboard players operation y_dir workspace /= 64 constant
scoreboard players operation z_dir workspace /= 64 constant
execute at @s run function sbpg:portals/explosions