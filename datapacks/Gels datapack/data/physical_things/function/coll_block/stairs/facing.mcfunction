
execute if block ~ ~ ~ #minecraft:stairs[facing=east] unless block ~-0.5 ~ ~ #minecraft:stairs[facing=east] run scoreboard players set #test main_score 1
execute if block ~ ~ ~ #minecraft:stairs[facing=west] unless block ~0.5 ~ ~ #minecraft:stairs[facing=west] run scoreboard players set #test main_score 1
execute if block ~ ~ ~ #minecraft:stairs[facing=north] unless block ~ ~ ~0.5 #minecraft:stairs[facing=north] run scoreboard players set #test main_score 1
execute if block ~ ~ ~ #minecraft:stairs[facing=south] unless block ~ ~ ~-0.5 #minecraft:stairs[facing=south] run scoreboard players set #test main_score 1
