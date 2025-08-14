
execute if block ^ ^ ^1 redstone_block run tag @s[tag=!emitter_orange] add emitter_orange
execute if block ^ ^ ^1 redstone_block if entity @s[tag=emitter_blue,tag=emitter_orange,tag=active] run function excursion_funnel:update
execute if block ^ ^ ^1 redstone_block if entity @s[tag=emitter_blue,tag=emitter_orange] run function mapmaker:portal_funnel/anim_start_orange
execute if block ^ ^ ^1 redstone_block if entity @s[tag=emitter_blue,tag=emitter_orange,tag=active,tag=!floor,tag=!ceiling] rotated ~180 ~ align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^ ^-0.4 run function excursion_funnel:create/orange/horizontal/raycast
execute if block ^ ^ ^1 redstone_block if entity @s[tag=emitter_blue,tag=emitter_orange,tag=active,tag=floor] rotated ~180 -90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^-0.85 ^0.5 run function excursion_funnel:create/orange/y/raycast
execute if block ^ ^ ^1 redstone_block if entity @s[tag=emitter_blue,tag=emitter_orange,tag=active,tag=ceiling] rotated ~180 90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^0.67 ^0.5 run function excursion_funnel:create/orange/y/raycast



execute if block ^ ^ ^1 redstone_block run tag @s[tag=emitter_blue] remove emitter_blue