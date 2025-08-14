execute if block ~ ~ ~ #minecraft:stairs[half=bottom] unless block ~ ~0.5 ~ #minecraft:stairs[half=bottom] run function physical_things:coll_block/stairs/facing

execute if block ~ ~ ~ #minecraft:stairs[half=top] unless block ~ ~-0.5 ~ #minecraft:stairs[half=top] run function physical_things:coll_block/stairs/facing

