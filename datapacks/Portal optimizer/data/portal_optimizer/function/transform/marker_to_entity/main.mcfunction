data modify storage midwut:main temp set from entity @s data

execute if entity @s[tag=portal_optimizer.zombie] run summon minecraft:zombie ~ ~ ~ {Tags:["get_id"]}
execute if entity @s[tag=portal_optimizer.armor_stand] run summon minecraft:armor_stand ~ ~ ~ {Tags:["get_id"]}

scoreboard players operation *test main_score = @s ID
execute as @e[type=#portal_optimizer:entities,distance=..0.001,tag=get_id,limit=1] run function portal_optimizer:transform/marker_to_entity/data/test

kill @s