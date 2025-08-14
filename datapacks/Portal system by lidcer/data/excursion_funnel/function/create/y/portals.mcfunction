

execute if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal_first,tag=sbpg.portal] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=!floor,tag=!ceiling,tag=!45_portal] at @s positioned ^ ^ ^-0.5 run function excursion_funnel:create/horizontal/raycast
execute if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal_second,tag=sbpg.portal] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=!floor,tag=!ceiling,tag=!45_portal] at @s positioned ^ ^ ^-0.5 run function excursion_funnel:create/horizontal/raycast

execute if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal_first,tag=sbpg.portal] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=floor] at @s positioned ^ ^ ^-0.5 run function excursion_funnel:create/y/raycast
execute if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal_first,tag=sbpg.portal] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=ceiling] at @s positioned ^ ^ ^-0.5 run function excursion_funnel:create/y/raycast

execute if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal_second,tag=sbpg.portal] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=floor] at @s positioned ^ ^ ^-0.5 run function excursion_funnel:create/y/raycast
execute if entity @e[type=minecraft:armor_stand,distance=..0.5,tag=sbpg.portal_second,tag=sbpg.portal] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=ceiling] at @s positioned ^ ^ ^-0.5 run function excursion_funnel:create/y/raycast
