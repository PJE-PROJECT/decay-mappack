tellraw @a {"text":"SirBenet's Portal Gun datapack installed","color":"aqua","type":"text"}

scoreboard objectives add workspace dummy

scoreboard objectives add global dummy
scoreboard objectives add timer dummy
scoreboard objectives add constant dummy

scoreboard objectives add sbpg.expld_timer dummy
scoreboard objectives add sbpg.player_id dummy

scoreboard objectives add sbpg.x dummy
scoreboard objectives add sbpg.y dummy
scoreboard objectives add sbpg.z dummy

scoreboard objectives add sbpg.prev_x dummy
scoreboard objectives add sbpg.prev_y dummy
scoreboard objectives add sbpg.prev_z dummy

scoreboard objectives add sbpg.matrix_aa dummy
scoreboard objectives add sbpg.matrix_ab dummy
scoreboard objectives add sbpg.matrix_ac dummy
scoreboard objectives add sbpg.matrix_ba dummy
scoreboard objectives add sbpg.matrix_bb dummy
scoreboard objectives add sbpg.matrix_bc dummy
scoreboard objectives add sbpg.matrix_ca dummy
scoreboard objectives add sbpg.matrix_cb dummy
scoreboard objectives add sbpg.matrix_cc dummy

scoreboard objectives add sbpg.inverse_aa dummy
scoreboard objectives add sbpg.inverse_ab dummy
scoreboard objectives add sbpg.inverse_ac dummy
scoreboard objectives add sbpg.inverse_ba dummy
scoreboard objectives add sbpg.inverse_bb dummy
scoreboard objectives add sbpg.inverse_bc dummy
scoreboard objectives add sbpg.inverse_ca dummy
scoreboard objectives add sbpg.inverse_cb dummy
scoreboard objectives add sbpg.inverse_cc dummy

scoreboard players set -1 constant -1
scoreboard players set 2 constant 2
scoreboard players set 3 constant 3
scoreboard players set 16 constant 16
scoreboard players set 64 constant 64
scoreboard players set 128 constant 128
scoreboard players set 256 constant 256
scoreboard players set 1024 constant 1024
scoreboard players set 16384 constant 16384
scoreboard players set 49152 constant 49152
scoreboard players set 268435456 constant 268435456
scoreboard players set 805306368 constant 805306368

scoreboard players set 2*1.62*256 constant 829
scoreboard players set 1.62^2*256 constant 672
scoreboard players set 1.62*256 constant 415