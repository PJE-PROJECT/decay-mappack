
summon minecraft:item_display ~ ~ ~ {Tags:["funnel","funnel_o","funnel_new","funnel_h"],item_display:"fixed",brightness:{sky:15,block:15}}

tp @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1] ^ ^ ^ ~180 ~
tag @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1] remove funnel_new