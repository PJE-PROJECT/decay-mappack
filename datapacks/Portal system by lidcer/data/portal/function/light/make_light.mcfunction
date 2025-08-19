item replace entity @e[tag=funnel] container.0 with air
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:white_terracotta"}}] add white.fakesky.display
item replace entity @e[type=item_display,tag=white.fakesky.display] container.0 with air
summon minecraft:item_display ~ ~ ~ {Tags:["shadowmap_stopframe"],item:{id:"minecraft:red_stained_glass",components:{"minecraft:custom_model_data":9},Count:1b}}
tag @e[tag=playerstart] add map.has.light

schedule function portal:light/begin 3t