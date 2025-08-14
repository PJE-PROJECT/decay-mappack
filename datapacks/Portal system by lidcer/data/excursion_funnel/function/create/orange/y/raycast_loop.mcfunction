
scoreboard players add @s Distance_funnel 1
scoreboard players add @s Distance_funnel_render 1

execute if score @s Distance_funnel_render matches 0..2 if block ^ ^ ^1 #excursion_funnel:excursion_funnel_air unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["funnel","funnel_o","funnel_new","funnel_y"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}
execute if score @s Distance_funnel_render matches 3 unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":109},count:1},Tags:["funnel","funnel_o","funnel_new","funnel_y"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}
execute if score @s Distance_funnel_render matches 2 unless block ^ ^ ^1 #excursion_funnel:excursion_funnel_air positioned ^ ^ ^ unless entity @e[type=minecraft:item_display,distance=..0.1,tag=funnel,limit=1] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":110},count:1},Tags:["funnel","funnel_o","funnel_new","funnel_y"],item_display:"fixed",brightness:{sky:15,block:15},width:2,height:2}


execute if score @s Distance_funnel_render matches 3 run scoreboard players set @s Distance_funnel_render 0
tp @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1] ^ ^ ^ ~ ~180
data merge entity @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1] {transformation:{translation:[0.0f,-0.5f,0.0f]}}

tag @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1,x_rotation=5..90] add D
tag @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1,x_rotation=5..90] remove U
tag @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1,x_rotation=-90..5] remove D
tag @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1,x_rotation=-90..5] add U

tag @e[type=minecraft:item_display,distance=..0.95,tag=funnel_new,limit=1] remove funnel_new


# CEILING PORTAL DETECT
execute positioned ^ ^-1.15 ^0.5 if entity @s[tag=floor,tag=funnel_emitter,tag=N] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=ceiling,tag=north] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^0.85 ^0.5 if entity @s[tag=floor,tag=funnel_emitter,tag=N] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=ceiling,tag=south] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^0.85 ^0.5 if entity @s[tag=floor,tag=funnel_emitter,tag=S] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=ceiling,tag=north] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^-1.15 ^0.5 if entity @s[tag=floor,tag=funnel_emitter,tag=S] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=ceiling,tag=south] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^-1.15 ^0.5 if entity @s[tag=floor,tag=funnel_emitter,tag=E] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=ceiling,tag=east] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^0.85 ^0.5 if entity @s[tag=floor,tag=funnel_emitter,tag=E] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=ceiling,tag=west] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^0.85 ^0.5 if entity @s[tag=floor,tag=funnel_emitter,tag=W] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=ceiling,tag=east] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^-1.15 ^0.5 if entity @s[tag=floor,tag=funnel_emitter,tag=W] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=ceiling,tag=west] run function excursion_funnel:create/orange/y/portals



# CEILING PORTAL DETECT
execute positioned ^ ^-1.15 ^1.5 if entity @s[tag=ceiling,tag=funnel_emitter,tag=N] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=floor,tag=north] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^0.85 ^1.5 if entity @s[tag=ceiling,tag=funnel_emitter,tag=N] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=floor,tag=south] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^0.85 ^1.5 if entity @s[tag=ceiling,tag=funnel_emitter,tag=S] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=floor,tag=north] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^-1.15 ^1.5 if entity @s[tag=ceiling,tag=funnel_emitter,tag=S] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=floor,tag=south] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^-1.15 ^1.5 if entity @s[tag=ceiling,tag=funnel_emitter,tag=E] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=floor,tag=east] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^0.85 ^1.5 if entity @s[tag=ceiling,tag=funnel_emitter,tag=E] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=floor,tag=west] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^0.85 ^1.5 if entity @s[tag=ceiling,tag=funnel_emitter,tag=W] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=floor,tag=east] run function excursion_funnel:create/orange/y/portals
execute positioned ^ ^-1.15 ^1.5 if entity @s[tag=ceiling,tag=funnel_emitter,tag=W] if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal,tag=floor,tag=west] run function excursion_funnel:create/orange/y/portals












execute if block ^ ^ ^1 #excursion_funnel:excursion_funnel_air if entity @s[scores={Distance_funnel=..100}] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=excursion_funnel_stop] positioned ~ ~1 ~ positioned ^ ^ ^1 run function excursion_funnel:create/orange/y/raycast_loop
