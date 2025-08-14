execute if block ~ ~ ~ #minecraft:slabs[type=bottom] unless block ~ ~0.5 ~ #minecraft:slabs[type=bottom] run scoreboard players set #test main_score 1
execute if block ~ ~ ~ #minecraft:slabs[type=top] unless block ~ ~-0.5 ~ #minecraft:slabs[type=top] run scoreboard players set #test main_score 1


