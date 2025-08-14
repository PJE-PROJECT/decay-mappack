



execute positioned ^ ^ ^1 if entity @s[tag=hard_light_bridge_emitter,tag=ceiling] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_first,tag=floor,distance=..2.5] run function hard_light_bridge:create/y/portals/b-o_floor
execute positioned ^ ^ ^1 if entity @s[tag=hard_light_bridge_emitter,tag=ceiling] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=floor,distance=..2.5] run function hard_light_bridge:create/y/portals/o-b_floor




execute positioned ^-0.5 ^-1 ^ if entity @s[tag=hard_light_bridge_emitter,tag=floor,tag=north] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_first,tag=ceiling,distance=..2.5] positioned ^ ^ ^-1 run function hard_light_bridge:create/y/portals/b-o_ceiling
execute positioned ^0.5 ^-1 ^ if entity @s[tag=hard_light_bridge_emitter,tag=floor,tag=south] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_first,tag=ceiling,distance=..2.5] positioned ^ ^ ^-1 run function hard_light_bridge:create/y/portals/b-o_ceiling
execute positioned ^-0.5 ^-1 ^ if entity @s[tag=hard_light_bridge_emitter,tag=floor,tag=east] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_first,tag=ceiling,distance=..2.5] positioned ^ ^ ^-1 run function hard_light_bridge:create/y/portals/b-o_ceiling
execute positioned ^0.5 ^-1 ^ if entity @s[tag=hard_light_bridge_emitter,tag=floor,tag=west] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_first,tag=ceiling,distance=..3.5] positioned ^ ^1 ^-1 run function hard_light_bridge:create/y/portals/b-o_ceiling



execute positioned ^-0.5 ^-1 ^ if entity @s[tag=hard_light_bridge_emitter,tag=floor,tag=north] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=ceiling,distance=..2.5] positioned ^ ^ ^-1 run function hard_light_bridge:create/y/portals/o-b_ceiling
execute positioned ^0.5 ^-1 ^ if entity @s[tag=hard_light_bridge_emitter,tag=floor,tag=south] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=ceiling,distance=..2.5] positioned ^ ^ ^-1 run function hard_light_bridge:create/y/portals/o-b_ceiling
execute positioned ^-0.5 ^-1 ^ if entity @s[tag=hard_light_bridge_emitter,tag=floor,tag=east] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=ceiling,distance=..2.5] positioned ^ ^ ^-1 run function hard_light_bridge:create/y/portals/o-b_ceiling
execute positioned ^0.5 ^-1 ^ if entity @s[tag=hard_light_bridge_emitter,tag=floor,tag=west] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=ceiling,distance=..3.5] positioned ^ ^1 ^-1 run function hard_light_bridge:create/y/portals/o-b_ceiling

