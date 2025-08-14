# Store prev pos, get current pos
scoreboard players operation @s sbpg.prev_x = @s sbpg.x
scoreboard players operation @s sbpg.prev_y = @s sbpg.y
scoreboard players operation @s sbpg.prev_z = @s sbpg.z
execute store result score @s sbpg.x run data get entity @s Pos[0] 16384
execute store result score @s sbpg.y run data get entity @s Pos[1] 16384
execute store result score @s sbpg.z run data get entity @s Pos[2] 16384