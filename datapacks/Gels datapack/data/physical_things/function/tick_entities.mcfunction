
execute as @e[type=minecraft:item_display,tag=physical_things.ball] at @s run function physical_things:tick_ball
execute as @e[type=minecraft:item_display,tag=physical_things.blob] at @s run function physical_things:tick_blob
data remove storage midwut:main Data

execute if entity @e[type=#physical_things:main,tag=physical_things.entity,limit=1] run schedule function physical_things:tick_entities 1t replace