
scoreboard players add .distance tf_rc_blue 1
scoreboard players add .distance_tr tf_rc_blue 1



$execute if score .distance_tr tf_rc_blue matches 200 run summon minecraft:item_display ~ ~ ~ {Rotation:[$(x)f,$(y)f],item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":118},Count:1b},Tags:["tracer","blue_t"],item_display:"fixed",brightness:{sky:15,block:15}}
execute if score .distance_tr tf_rc_blue matches 200 run scoreboard players set .distance_tr tf_rc_blue 0


execute if score .distance tf_rc_blue matches ..10000 positioned ^ ^ ^0.01 rotated ~ ~ unless entity @e[type=minecraft:item_display,distance=..1,tag=meg_field,limit=1] if block ~ ~ ~ #portal:raycast_pass unless block ~ ~ ~ iron_trapdoor unless entity @e[type=glow_item_frame,tag=hard_light_bridge_y,distance=..0.1] unless entity @e[type=item_display,tag=portalblock.model,limit=1,distance=..0.7] run function portal_blue:raycast with storage 1:1
execute if score .distance tf_rc_blue matches ..10000 positioned ^ ^ ^0.01 rotated ~ ~ unless entity @e[type=minecraft:item_display,distance=..1,tag=meg_field,limit=1] if block ~ ~ ~ #portal:raycast_pass if block ~ ~ ~ iron_trapdoor if entity @e[type=glow_item_frame,tag=hard_light_bridge_y,distance=..1.2] unless entity @e[type=item_display,tag=portalblock.model,limit=1,distance=..0.7] run function portal_blue:raycast with storage 1:1




execute if score .distance tf_rc_blue matches ..10000 positioned ^ ^ ^0.01 rotated ~ ~ unless entity @e[type=minecraft:item_display,distance=..1,tag=meg_field,limit=1] unless entity @e[distance=..0.9,tag=sbpg.portal_second,limit=1] positioned ^ ^1 ^ unless entity @e[distance=..0.9,tag=sbpg.portal_second,limit=1] positioned ^ ^-2 ^ unless entity @e[distance=..0.9,tag=sbpg.portal_second,limit=1] positioned ^ ^1 ^ unless block ~ ~ ~ #portal:raycast_pass run function portal_blue:orange