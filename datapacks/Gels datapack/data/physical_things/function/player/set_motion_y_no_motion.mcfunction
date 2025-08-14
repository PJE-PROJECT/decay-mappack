scoreboard players set *potoloc_test main_score 1
scoreboard players set $x delta.api.launch 0
scoreboard players set $y delta.api.launch -8050
scoreboard players set $z delta.api.launch 0
function delta:api/launch_xyz
execute store result score @s physical_things.mot_y2 run data get entity @s Pos[1] 10
scoreboard players add @s physical_things.mot_y2 35
tag @s add new_y_pos
