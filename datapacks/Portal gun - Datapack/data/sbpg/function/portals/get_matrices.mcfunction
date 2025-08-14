summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sbpg.vector_getter"]}

# Left (col 1)
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^1 ^ ^ as @e[type=minecraft:area_effect_cloud,tag=sbpg.vector_getter] run function sbpg:code/get_vector
scoreboard players operation @s sbpg.matrix_aa = x workspace
scoreboard players operation @s sbpg.matrix_ba = y workspace
scoreboard players operation @s sbpg.matrix_ca = z workspace

# Up (col 2)
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^1 ^ as @e[type=minecraft:area_effect_cloud,tag=sbpg.vector_getter] run function sbpg:code/get_vector
scoreboard players operation @s sbpg.matrix_ab = x workspace
scoreboard players operation @s sbpg.matrix_bb = y workspace
scoreboard players operation @s sbpg.matrix_cb = z workspace

# Forward (col 3)
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 as @e[type=minecraft:area_effect_cloud,tag=sbpg.vector_getter] run function sbpg:code/get_vector
scoreboard players operation @s sbpg.matrix_ac = x workspace
scoreboard players operation @s sbpg.matrix_bc = y workspace
scoreboard players operation @s sbpg.matrix_cc = z workspace

kill @e[type=minecraft:area_effect_cloud,tag=sbpg.vector_getter]

# Calculate inverse
function sbpg:maths/matrix_invert