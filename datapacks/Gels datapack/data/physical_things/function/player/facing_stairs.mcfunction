execute if block ~ ~ ~ minecraft:dark_oak_stairs[facing=north] run scoreboard players set #type main_score 0
execute if score #type main_score matches -1 if block ~ ~ ~ minecraft:dark_oak_stairs[facing=east] run scoreboard players set #type main_score 90000
execute if score #type main_score matches -1 if block ~ ~ ~ minecraft:dark_oak_stairs[facing=south] run scoreboard players set #type main_score 180000
execute if score #type main_score matches -1 if block ~ ~ ~ minecraft:dark_oak_stairs[facing=west] run scoreboard players set #type main_score 270000
