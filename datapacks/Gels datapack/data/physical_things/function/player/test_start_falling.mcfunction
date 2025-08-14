scoreboard players set #test2 main_score 0
execute positioned ~0.3 ~-0.001 ~0.3 run function physical_things:coll_blocks
scoreboard players operation #test2 main_score += #test main_score
execute positioned ~0.3 ~-0.001 ~-0.3 run function physical_things:coll_blocks
scoreboard players operation #test2 main_score += #test main_score
execute positioned ~-0.3 ~-0.001 ~0.3 run function physical_things:coll_blocks
scoreboard players operation #test2 main_score += #test main_score
execute positioned ~-0.3 ~-0.001 ~-0.3 run function physical_things:coll_blocks
scoreboard players operation #test2 main_score += #test main_score


execute if entity @s[tag=stojal_rovno] if score #test2 main_score matches 4 run function physical_things:player/start_falling
tag @s remove stojal_rovno
execute unless score #test2 main_score matches 4 run tag @s add stojal_rovno

#tellraw @a [{"score":{"name": "#test2","objective": "main_score"}}]


