execute if entity @s[type=item_display,tag=funnel_emitter,tag=emitter_blue,tag=!emitter_orange,tag=active] run tag @s remove active
execute if entity @s[type=item_display,tag=funnel_emitter,tag=emitter_orange,tag=!emitter_blue,tag=active] run tag @s remove active

kill @e[type=item_display,tag=funnel]

execute as @e[type=item_display,tag=funnel_emitter,tag=emitter_blue,tag=!emitter_orange,tag=active,tag=!floor,tag=!ceiling] at @s rotated ~180 ~ align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^ ^-0.4 run function excursion_funnel:create/horizontal/raycast
execute as @e[type=item_display,tag=funnel_emitter,tag=emitter_orange,tag=!emitter_blue,tag=active,tag=!floor,tag=!ceiling] at @s rotated ~180 ~ align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^ ^-0.4 run function excursion_funnel:create/orange/horizontal/raycast

execute as @e[type=item_display,tag=funnel_emitter,tag=emitter_blue,tag=!emitter_orange,tag=active,tag=floor] at @s rotated ~180 -90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^-1.2 ^0.5 run function excursion_funnel:create/y/raycast
execute as @e[type=item_display,tag=funnel_emitter,tag=emitter_orange,tag=!emitter_blue,tag=active,tag=floor] at @s rotated ~180 -90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^-0.85 ^0.5 run function excursion_funnel:create/orange/y/raycast

execute as @e[type=item_display,tag=funnel_emitter,tag=emitter_blue,tag=!emitter_orange,tag=active,tag=ceiling] at @s rotated ~180 90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^0.32 ^0.5 run function excursion_funnel:create/y/raycast
execute as @e[type=item_display,tag=funnel_emitter,tag=emitter_orange,tag=!emitter_blue,tag=active,tag=ceiling] at @s rotated ~180 90 align xyz positioned ~0.5 ~-0.5 ~0.5 positioned ^ ^0.67 ^0.5 run function excursion_funnel:create/orange/y/raycast


