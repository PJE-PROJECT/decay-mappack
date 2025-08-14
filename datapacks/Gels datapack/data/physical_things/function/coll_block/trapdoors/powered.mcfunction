execute if block ~ ~ ~ #minecraft:trapdoors[facing=east] if block ~-0.1875 ~ ~ #minecraft:trapdoors[facing=east] run scoreboard players set #test main_score 1
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west] if block ~0.1875 ~ ~ #minecraft:trapdoors[facing=west] run scoreboard players set #test main_score 1
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south] if block ~ ~ ~-0.1875 #minecraft:trapdoors[facing=south] run scoreboard players set #test main_score 1
execute if block ~ ~ ~ #minecraft:trapdoors[facing=north] if block ~ ~ ~0.1875 #minecraft:trapdoors[facing=north] run scoreboard players set #test main_score 1
