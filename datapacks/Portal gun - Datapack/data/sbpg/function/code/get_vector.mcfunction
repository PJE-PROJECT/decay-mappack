# What's our vector, Victor?
tp @s ~ ~ ~
execute store result score x workspace run data get entity @s Pos[0] 16384
execute store result score y workspace run data get entity @s Pos[1] 16384
execute store result score z workspace run data get entity @s Pos[2] 16384