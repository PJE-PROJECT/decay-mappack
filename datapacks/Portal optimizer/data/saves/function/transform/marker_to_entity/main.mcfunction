data modify storage midwut:main temp set from entity @s data

execute if entity @s[tag=portal_optimizer.armor_stand] run summon minecraft:armor_stand ~ ~ ~ {Tags:["get_id"]}

scoreboard players operation *test main_score = @s ID
execute as @e[type=minecraft:armor_stand,distance=..0.001,tag=get_id,limit=1] run function saves:transform/marker_to_entity/data/test

tp @e[distance=..1,tag=collus] ~ -666 ~

kill @s