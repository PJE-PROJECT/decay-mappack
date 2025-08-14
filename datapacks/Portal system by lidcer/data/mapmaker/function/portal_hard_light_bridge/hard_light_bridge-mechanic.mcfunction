execute if entity @s[tag=!active,tag=!floor,tag=!ceiling] if block ^ ^ ^-2 minecraft:redstone_block run function hard_light_bridge:create/horizontal/raycast
execute if entity @s[tag=!active,tag=floor] if block ^ ^ ^-2 minecraft:redstone_block positioned ~ ~-3 ~ run function hard_light_bridge:create/y/raycast
execute if entity @s[tag=!active,tag=ceiling] if block ^ ^ ^-2 minecraft:redstone_block positioned ~ ~ ~ run function hard_light_bridge:create/y/raycast





execute if entity @s[tag=!active] if block ^ ^ ^-2 minecraft:redstone_block run tag @s add active
execute if entity @s[tag=active] unless block ^ ^ ^-2 minecraft:redstone_block run function hard_light_bridge:delete
execute if entity @s[tag=active] unless block ^ ^ ^-2 minecraft:redstone_block run tag @s remove active

execute if entity @e[type=minecraft:glow_item_frame,distance=..1.2,tag=indicator,tag=active,limit=1] run setblock ^ ^ ^-2 minecraft:redstone_block
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1.2,tag=indicator,tag=active,limit=1] if entity @e[type=minecraft:glow_item_frame,distance=..1.2,tag=indicator,tag=!active,limit=1] run setblock ^ ^ ^-2 minecraft:granite

execute as @a at @s positioned ~ ~1 ~ if entity @e[type=minecraft:glow_item_frame,distance=..0.5,tag=hard_light_bridge,tag=!hard_light_bridge_y] run tp @s ~ ~0.2 ~
execute as @e[type=minecraft:armor_stand,tag=cube] positioned ~ ~1 ~ if entity @e[type=minecraft:glow_item_frame,distance=..0.5,tag=hard_light_bridge,tag=!hard_light_bridge_y] run tp @s ~ ~0.2 ~

execute if entity @s[tag=!useless] if block ^ ^ ^-1 minecraft:air run kill @s
