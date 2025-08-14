# Calculate the face we hit
execute store result score in_x workspace run data get entity @s xTile
execute store result score in_y workspace run data get entity @s yTile
execute store result score in_z workspace run data get entity @s zTile
execute store result score pos_x workspace run data get entity @s Pos[0]
execute store result score pos_y workspace run data get entity @s Pos[1]
execute store result score pos_z workspace run data get entity @s Pos[2]
scoreboard players operation pos_x workspace -= in_x workspace
scoreboard players operation pos_y workspace -= in_y workspace
scoreboard players operation pos_z workspace -= in_z workspace

# Prevent creating multiple
scoreboard players set created workspace 0