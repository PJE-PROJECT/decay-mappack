execute if entity @s[tag=b] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:air",count:1},Tags:["portal_spawner_lights","portal_spawner","new","b"],brightness:{sky:15,block:15}}
execute if entity @s[tag=o] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:air",count:1},Tags:["portal_spawner_lights","portal_spawner","new","o"],brightness:{sky:15,block:15}}

tp @e[type=minecraft:item_display,tag=portal_spawner_lights,tag=new,limit=1] @s
tag @e[type=minecraft:item_display,tag=portal_spawner_lights,tag=new,limit=1] remove new








