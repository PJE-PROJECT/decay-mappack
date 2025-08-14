

execute if entity @s[tag=hard_light_bridge_emitter] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=!floor,tag=!ceiling,tag=!45_panel] at @s run function hard_light_bridge:create/horizontal/portals/b-o

execute if entity @s[tag=hard_light_bridge_emitter] as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=!floor,tag=!ceiling,tag=!45_panel] at @s run function hard_light_bridge:create/horizontal/portals/o-b