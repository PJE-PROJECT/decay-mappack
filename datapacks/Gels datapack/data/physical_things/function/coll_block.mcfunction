scoreboard players set #test main_score 0
#execute if block ~ ~ ~ #midwut:pixels/different_height run summon marker ~ ~ ~ {Tags:["midwut.test_coll_block"]}
#execute if block ~ ~ ~ #midwut:pixels/different_height as @e[type=marker,distance=..0.001,limit=1,tag=midwut.test_coll_block] run function physical_things:coll_block/pos

execute if block ~ ~ ~ minecraft:light run scoreboard players set #test main_score 1
execute if block ~ ~ ~ #midwut:run_no_pixels run scoreboard players set #test main_score 1
execute if block ~ ~ ~ #minecraft:stairs run function physical_things:coll_block/stairs/main
execute if block ~ ~ ~ #minecraft:slabs run function physical_things:coll_block/slabs/main
execute if block ~ ~ ~ #midwut:glass/glass_pane run function physical_things:coll_block/glass_pane/main
execute if block ~ ~ ~ #minecraft:trapdoors run function physical_things:coll_block/trapdoors/main
execute if block ~ ~ ~ minecraft:snow run function physical_things:coll_block/snow/main

execute if entity @e[type=minecraft:marker,distance=..0.5,tag=physical_things.ball_main,tag=!physical_things.this_ball,limit=1] run scoreboard players set #test main_score -1
execute if entity @e[type=#physical_things:coll,distance=..3,limit=1] as @e[type=#physical_things:coll,dx=0,distance=..3,limit=10] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run scoreboard players set #test main_score -1


