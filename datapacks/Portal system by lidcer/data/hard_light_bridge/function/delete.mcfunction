#execute at @e[type=minecraft:glow_item_frame,tag=hard_light_bridge,tag=!hard_light_bridge_y] if block ~ ~-1 ~ minecraft:iron_trapdoor[open=false,half=top] run setblock ~ ~-1 ~ air

execute at @e[type=minecraft:glow_item_frame,tag=hard_light_bridge,tag=!hard_light_bridge_y] if block ~ ~-1 ~ minecraft:dark_oak_slab[type=top] run setblock ~ ~-1 ~ minecraft:air
execute at @e[type=minecraft:glow_item_frame,tag=hard_light_bridge,tag=hard_light_bridge_y] if block ~ ~ ~ minecraft:iron_trapdoor[open=true] run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:glow_item_frame,tag=hard_light_bridge] run kill @s

tag @e[type=minecraft:item_display,tag=hard_light_bridge_emitter,tag=active] remove active