execute if entity @e[type=minecraft:item_frame,distance=..0.001,tag=blue_gel,limit=1,nbt={Facing:1b}] run scoreboard players set #test2 main_score 1

execute if block ~ ~ ~ minecraft:dark_oak_stairs align y positioned ~ ~1 ~ if entity @e[type=minecraft:item_frame,distance=..0.001,tag=blue_gel,limit=1,nbt={Facing:1b}] run scoreboard players set #test2 main_score 1
