
scoreboard players set @s Distance 0
scoreboard players set @s Distance_bridge 0

## PORTALS

#FLOOR
execute if entity @s[tag=floor,tag=sbpg.portal,tag=north] positioned ~ ~2 ~ positioned ^ ^-2 ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=floor,tag=sbpg.portal,tag=south] positioned ~ ~2 ~ positioned ^ ^-4 ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=floor,tag=sbpg.portal,tag=west] positioned ~ ~2 ~ positioned ^ ^-2 ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=floor,tag=sbpg.portal,tag=east] positioned ~ ~2 ~ positioned ^ ^-4 ^1 run function hard_light_bridge:create/y/raycast_loop

#CEILING
execute if entity @s[tag=ceiling,tag=sbpg.portal,tag=north] positioned ~ ~1 ~ positioned ^ ^ ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=ceiling,tag=sbpg.portal,tag=south] positioned ~ ~1 ~ positioned ^ ^ ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=ceiling,tag=sbpg.portal,tag=east] positioned ~ ~1 ~ positioned ^ ^ ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=ceiling,tag=sbpg.portal,tag=west] positioned ~ ~1 ~ positioned ^ ^ ^1 run function hard_light_bridge:create/y/raycast_loop


## HARD LIGHT BRIDGE EMITTER
#FLOOR
execute if entity @s[tag=floor,tag=hard_light_bridge_emitter,tag=north] align xyz positioned ~ ~2.5 ~ positioned ^ ^0.99 ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=floor,tag=hard_light_bridge_emitter,tag=south] align xyz positioned ~ ~2.5 ~ positioned ^ ^ ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=floor,tag=hard_light_bridge_emitter,tag=west] align xyz positioned ~ ~2.5 ~ positioned ^ ^ ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=floor,tag=hard_light_bridge_emitter,tag=east] align xyz positioned ~ ~2.5 ~ positioned ^ ^ ^1 run function hard_light_bridge:create/y/raycast_loop


#CEILING
execute if entity @s[tag=ceiling,tag=hard_light_bridge_emitter,tag=north] align xyz positioned ~ ~1 ~ positioned ^-0.5 ^-0.99 ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=ceiling,tag=hard_light_bridge_emitter,tag=south] align xyz positioned ~ ~1 ~ positioned ^0.5 ^ ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=ceiling,tag=hard_light_bridge_emitter,tag=east] align xyz positioned ~ ~1 ~ positioned ^-0.5 ^ ^1 run function hard_light_bridge:create/y/raycast_loop
execute if entity @s[tag=ceiling,tag=hard_light_bridge_emitter,tag=west] align xyz positioned ~ ~1 ~ positioned ^0.5 ^-0.99 ^1 run function hard_light_bridge:create/y/raycast_loop