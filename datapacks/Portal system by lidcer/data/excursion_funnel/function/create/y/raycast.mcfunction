
scoreboard players set @s Distance_funnel 0
scoreboard players set @s Distance_funnel_render 1

execute if entity @s[tag=funnel_emitter,tag=floor,tag=!north,tag=!west] positioned ^ ^0.5 ^1.5 run function excursion_funnel:create/y/raycast_loop
execute if entity @s[tag=funnel_emitter,tag=ceiling] positioned ^ ^-1 ^-0.5 run function excursion_funnel:create/y/raycast_loop




execute if entity @s[tag=sbpg.portal,tag=floor,tag=north] positioned ^ ^-0.15 ^1.5 run function excursion_funnel:create/y/raycast_loop
execute if entity @s[tag=sbpg.portal,tag=floor,tag=south] positioned ^ ^-0.6 ^1.5 run function excursion_funnel:create/y/raycast_loop
execute if entity @s[tag=sbpg.portal,tag=floor,tag=east] positioned ^ ^-0.6 ^1.5 run function excursion_funnel:create/y/raycast_loop
execute if entity @s[tag=sbpg.portal,tag=floor,tag=west] positioned ^-0.1 ^-0.15 ^1.5 run function excursion_funnel:create/y/raycast_loop


execute if entity @s[tag=sbpg.portal,tag=ceiling] positioned ^ ^-1 ^-0.5 run function excursion_funnel:create/y/raycast_loop