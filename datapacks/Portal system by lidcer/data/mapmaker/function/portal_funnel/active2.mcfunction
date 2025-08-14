execute if block ^ ^-1 ^1 redstone_block if entity @s[tag=!active] run function mapmaker:portal_funnel/anim_start
execute if block ^ ^-1 ^1 redstone_block if entity @s[tag=!active,tag=emitter_blue,tag=!floor,tag=!ceiling] rotated ~180 ~ align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^ ^-0.4 run function excursion_funnel:create/horizontal/raycast
execute if block ^ ^-1 ^1 redstone_block if entity @s[tag=!active,tag=emitter_blue,tag=floor] rotated ~180 -90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^-1.2 ^0.5 run function excursion_funnel:create/y/raycast
execute if block ^ ^-1 ^1 redstone_block if entity @s[tag=!active,tag=emitter_blue,tag=ceiling] rotated ~180 90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^0.32 ^0.5 run function excursion_funnel:create/y/raycast


execute if block ^ ^-1 ^1 redstone_block if entity @s[tag=!active,tag=emitter_orange,tag=!floor,tag=!ceiling] rotated ~180 ~ align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^ ^-0.4 run function excursion_funnel:create/orange/horizontal/raycast
execute if block ^ ^-1 ^1 redstone_block if entity @s[tag=!active,tag=emitter_orange,tag=floor] rotated ~180 -90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^-0.85 ^0.5 run function excursion_funnel:create/orange/y/raycast
execute if block ^ ^-1 ^1 redstone_block if entity @s[tag=!active,tag=emitter_orange,tag=ceiling] rotated ~180 90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^0.67 ^0.5 run function excursion_funnel:create/orange/y/raycast





execute if block ^ ^-1 ^1 redstone_block if entity @s[tag=!active] run tag @s add active