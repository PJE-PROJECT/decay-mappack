
scoreboard players set @s Distance_funnel 0
scoreboard players set @s Distance_funnel_render 1

execute positioned ^ ^-0.2 ^ run function excursion_funnel:create/orange/horizontal/raycast_end
execute align xyz positioned ~0.5 ~0.3 ~0.5 positioned ^ ^ ^1 run function excursion_funnel:create/orange/horizontal/raycast_loop