# Make nearby entities check if they're entering this portal
execute as @e[type=!minecraft:player,distance=..5,tag=portable,tag=!sbpg.portal] run function sbpg:code/store_pos

scoreboard players operation portal_x workspace = @s sbpg.x
scoreboard players operation portal_y workspace = @s sbpg.y
scoreboard players operation portal_z workspace = @s sbpg.z
scoreboard players operation forward_x workspace = @s sbpg.matrix_ac
scoreboard players operation forward_y workspace = @s sbpg.matrix_bc
scoreboard players operation forward_z workspace = @s sbpg.matrix_cc

scoreboard players operation portal_id workspace = @s sbpg.player_id
tag @s add sbpg.entering
execute as @e[distance=..1.7,tag=portable,tag=!sbpg.portal] run function sbpg:portals/check_enter



tag @s remove sbpg.entering