execute if entity @s[type=minecraft:zombie] run summon minecraft:marker ~ ~ ~ {Tags:["portal_optimizer.entity","get_id","portal_optimizer.zombie"],data:{}}
execute if entity @s[type=minecraft:armor_stand] run summon minecraft:marker ~ ~ ~ {Tags:["portal_optimizer.entity","get_id","portal_optimizer.armor_stand"],data:{}}

data modify storage midwut:main temp set from entity @s
scoreboard players operation *test main_score = @s ID
execute as @e[type=minecraft:marker,distance=..0.001,tag=portal_optimizer.entity,tag=get_id,limit=1] run function portal_optimizer:transform/entity_to_marker/data

tp ~ -10000 ~
kill @s