execute if block ~ ~ ~ minecraft:snow[layers=8] unless block ~ ~0.125 ~ minecraft:snow[layers=8] run scoreboard players set #test main_score 1
execute if score #test main_score matches 0 if block ~ ~ ~ minecraft:snow[layers=7] unless block ~ ~0.25 ~ minecraft:snow[layers=7] run scoreboard players set #test main_score 1
execute if score #test main_score matches 0 if block ~ ~ ~ minecraft:snow[layers=6] unless block ~ ~0.375 ~ minecraft:snow[layers=6] run scoreboard players set #test main_score 1
execute if score #test main_score matches 0 if block ~ ~ ~ minecraft:snow[layers=5] unless block ~ ~0.5 ~ minecraft:snow[layers=5] run scoreboard players set #test main_score 1
execute if score #test main_score matches 0 if block ~ ~ ~ minecraft:snow[layers=4] unless block ~ ~0.625 ~ minecraft:snow[layers=4] run scoreboard players set #test main_score 1
execute if score #test main_score matches 0 if block ~ ~ ~ minecraft:snow[layers=3] unless block ~ ~0.75 ~ minecraft:snow[layers=3] run scoreboard players set #test main_score 1
execute if score #test main_score matches 0 if block ~ ~ ~ minecraft:snow[layers=2] unless block ~ ~0.875 ~ minecraft:snow[layers=2] run scoreboard players set #test main_score 1
execute if score #test main_score matches 0 if block ~ ~ ~ minecraft:snow[layers=1] run scoreboard players set #test main_score 1