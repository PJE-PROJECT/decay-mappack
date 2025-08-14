scoreboard players set #test main_score 0
#execute if block ~ ~ ~ #midwut:pixels/different_height run summon marker ~ ~ ~ {Tags:["midwut.test_coll_block"]}
#execute if block ~ ~ ~ #midwut:pixels/different_height as @e[type=marker,distance=..0.001,limit=1,tag=midwut.test_coll_block] run function physical_things:coll_block/pos

execute if block ~ ~ ~ minecraft:light run scoreboard players set #test main_score 1
execute if score #test main_score matches 0 if block ~ ~ ~ #midwut:run_no_pixels run scoreboard players set #test main_score 1
execute if score #test main_score matches 0 if block ~ ~ ~ #minecraft:stairs run function physical_things:coll_block/stairs/main
execute if score #test main_score matches 0 if block ~ ~ ~ #minecraft:slabs run function physical_things:coll_block/slabs/main
execute if score #test main_score matches 0 if block ~ ~ ~ #midwut:glass/glass_pane run function physical_things:coll_block/glass_pane/main
execute if score #test main_score matches 0 if block ~ ~ ~ #minecraft:trapdoors run function physical_things:coll_block/trapdoors/main
execute if score #test main_score matches 0 if block ~ ~ ~ minecraft:snow run function physical_things:coll_block/snow/main


