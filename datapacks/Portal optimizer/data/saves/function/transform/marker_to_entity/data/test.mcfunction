execute if entity @s[type=minecraft:armor_stand] run function saves:transform/marker_to_entity/data/armor_stand


tag @s remove saved_cube
tag @s add saved_cube_entity
execute at @s run tp @s ~ ~ ~ ~ ~
scoreboard players operation @s ID = *test main_score


