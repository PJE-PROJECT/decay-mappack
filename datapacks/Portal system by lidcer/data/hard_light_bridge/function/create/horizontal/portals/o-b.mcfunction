#Orange-blue
#XZ
execute positioned ^ ^ ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=!floor,tag=!ceiling,tag=!45_portal] at @s positioned ^ ^ ^ run function hard_light_bridge:create/horizontal/raycast
execute positioned ^ ^1 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=!floor,tag=!ceiling,tag=!45_portal] at @s positioned ^ ^1 ^ run function hard_light_bridge:create/horizontal/raycast
execute positioned ^ ^2 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=!floor,tag=!ceiling,tag=!45_portal] at @s positioned ^ ^2 ^ run function hard_light_bridge:create/horizontal/raycast

#Y
execute positioned ^ ^ ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=south] at @s positioned ^ ^2 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^ ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=north] at @s positioned ^ ^0.5 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^ ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=east] at @s positioned ^ ^2 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^ ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=west] at @s positioned ^ ^1 ^-1 run function hard_light_bridge:create/y/raycast

execute positioned ^ ^1 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=south] at @s positioned ^ ^3 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^1 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=north] at @s positioned ^ ^2 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^1 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=east] at @s positioned ^ ^3 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^1 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=west] at @s positioned ^ ^2 ^-1 run function hard_light_bridge:create/y/raycast

execute positioned ^ ^2 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=south] at @s positioned ^ ^4 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^2 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=north] at @s positioned ^ ^3 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^2 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=east] at @s positioned ^ ^4 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^2 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor,tag=west] at @s positioned ^ ^3 ^-1 run function hard_light_bridge:create/y/raycast




execute positioned ^ ^ ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=south] at @s positioned ^ ^-2 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^ ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=north] at @s positioned ^ ^-3 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^ ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=east] at @s positioned ^ ^-2 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^ ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=west] at @s positioned ^ ^-3 ^-1 run function hard_light_bridge:create/y/raycast

execute positioned ^ ^1 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=south] at @s positioned ^ ^-1 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^1 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=north] at @s positioned ^ ^-2 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^1 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=east] at @s positioned ^ ^-1 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^1 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=west] at @s positioned ^ ^-2 ^-1 run function hard_light_bridge:create/y/raycast

execute positioned ^ ^2 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=south] at @s positioned ^ ^ ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^2 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=north] at @s positioned ^ ^-1 ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^2 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=east] at @s positioned ^ ^ ^-1 run function hard_light_bridge:create/y/raycast
execute positioned ^ ^2 ^ if entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling,tag=west] at @s positioned ^ ^-1 ^-1 run function hard_light_bridge:create/y/raycast