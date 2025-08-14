execute if entity @s[type=minecraft:zombie] run function portal_optimizer:transform/marker_to_entity/data/zombie
execute if entity @s[type=minecraft:armor_stand] run function portal_optimizer:transform/marker_to_entity/data/armor_stand

execute at @s run tp @s ~ ~ ~ ~ ~
scoreboard players operation @s ID = *test main_score


