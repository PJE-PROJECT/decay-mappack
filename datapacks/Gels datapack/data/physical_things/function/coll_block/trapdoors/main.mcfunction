execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] if block ~ ~-0.1875 ~ #minecraft:trapdoors[half=bottom,open=false] run scoreboard players set #test main_score 1
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] if block ~ ~0.1875 ~ #minecraft:trapdoors[half=top,open=false] run scoreboard players set #test main_score 1

execute if block ~ ~ ~ #minecraft:trapdoors[open=true] run function physical_things:coll_block/trapdoors/powered

