
scoreboard players add @s Distance_funnel 1
scoreboard players add @s Distance_funnel_render 1

execute if entity @s[tag=!north,tag=!south] if score @s Distance_funnel_render matches 0..2 if block ^ ^ ^1 #excursion_funnel:excursion_funnel_air unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=-90] unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=90] run summon minecraft:item_display ~ ~ ~ {Tags:["funnel","funnel_b","funnel_new","funnel_h"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}
execute if entity @s[tag=!north,tag=!south] if score @s Distance_funnel_render matches 3 unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=-90] unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=90] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":107},count:1},Tags:["funnel","funnel_b","funnel_new","funnel_h"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}
execute if entity @s[tag=!north,tag=!south] if score @s Distance_funnel_render matches 2 unless block ^ ^ ^1 #excursion_funnel:excursion_funnel_air positioned ^ ^ ^ unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=-90] unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=90] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":108},count:1},Tags:["funnel","funnel_b","funnel_new","funnel_h"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}
execute if entity @s[tag=!north,tag=!south] if score @s Distance_funnel_render matches 0..1 if block ^ ^ ^ #excursion_funnel:excursion_funnel_air unless block ^ ^ ^1 #excursion_funnel:excursion_funnel_air unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=-90] unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=90] run summon minecraft:item_display ~ ~ ~ {Tags:["funnel","funnel_b","funnel_new","funnel_h"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}




execute if entity @s[tag=!east,tag=!west] if score @s Distance_funnel_render matches 0..2 if block ^ ^ ^1 #excursion_funnel:excursion_funnel_air unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=0] unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=180] run summon minecraft:item_display ~ ~ ~ {Tags:["funnel","funnel_b","funnel_new","funnel_h"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}
execute if entity @s[tag=!east,tag=!west] if score @s Distance_funnel_render matches 3 unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=0] unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=180] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":107},count:1},Tags:["funnel","funnel_b","funnel_new","funnel_h"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}
execute if entity @s[tag=!east,tag=!west] if score @s Distance_funnel_render matches 2 unless block ^ ^ ^1 #excursion_funnel:excursion_funnel_air positioned ^ ^ ^ unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=0] unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=180] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":108},count:1},Tags:["funnel","funnel_b","funnel_new","funnel_h"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}
execute if entity @s[tag=!east,tag=!west] if score @s Distance_funnel_render matches 0..1 if block ^ ^ ^ #excursion_funnel:excursion_funnel_air unless block ^ ^ ^1 #excursion_funnel:excursion_funnel_air unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=0] unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1,y_rotation=180] run summon minecraft:item_display ~ ~ ~ {Tags:["funnel","funnel_b","funnel_new","funnel_h"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}


execute if score @s Distance_funnel_render matches 3 run scoreboard players set @s Distance_funnel_render 0
tp @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1] ^ ^ ^ ~ ~
tag @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1] remove funnel_new


execute unless block ^ ^ ^1 #excursion_funnel:excursion_funnel_air positioned ^ ^ ^0.8 run function excursion_funnel:create/horizontal/raycast_end

execute positioned ^ ^0.5 ^0.5 if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=!floor,tag=!ceiling,tag=!45_portal] run function excursion_funnel:create/horizontal/portals



execute if block ^ ^ ^1 #excursion_funnel:excursion_funnel_air if block ^ ^1 ^ #excursion_funnel:excursion_funnel_air if entity @s[scores={Distance_funnel=..100}] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=excursion_funnel_stop] positioned ~ ~1 ~ positioned ^ ^ ^1 run function excursion_funnel:create/horizontal/raycast_loop
