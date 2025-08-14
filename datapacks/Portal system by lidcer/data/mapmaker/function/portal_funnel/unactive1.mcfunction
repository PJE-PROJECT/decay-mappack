
execute unless block ^ ^ ^1 redstone_block run tag @s[tag=!emitter_blue] add emitter_blue
execute unless block ^ ^ ^1 redstone_block if entity @s[tag=emitter_blue,tag=emitter_orange,tag=active] run function excursion_funnel:update
execute unless block ^ ^ ^1 redstone_block if entity @s[tag=emitter_blue,tag=emitter_orange] run function mapmaker:portal_funnel/anim_start_blue
execute unless block ^ ^ ^1 redstone_block if entity @s[tag=emitter_blue,tag=emitter_orange,tag=active,tag=!floor,tag=!ceiling] rotated ~180 ~ align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^ ^-0.4 run function excursion_funnel:create/horizontal/raycast
execute unless block ^ ^ ^1 redstone_block if entity @s[tag=emitter_blue,tag=emitter_orange,tag=active,tag=floor] rotated ~180 -90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^-1.2 ^0.5 run function excursion_funnel:create/y/raycast
execute unless block ^ ^ ^1 redstone_block if entity @s[tag=emitter_blue,tag=emitter_orange,tag=active,tag=ceiling] rotated ~180 90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^0.32 ^0.5 run function excursion_funnel:create/y/raycast




execute unless block ^ ^ ^1 redstone_block run tag @s[tag=emitter_orange] remove emitter_orange