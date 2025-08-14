scoreboard players set @s Laser_Color 0
scoreboard players operation @s laser_ID = ID.cloud laser_ID
scoreboard players add ID.cloud laser_ID 1
tag @s add laser_ID
execute if entity @s[tag=laser_cube_new] run tag @s remove laser_cube_new
execute if entity @s[tag=laser_emitter_new] run tag @s remove laser_emitter_new