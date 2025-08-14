execute unless entity @e[type=minecraft:item_display,distance=..0.1,tag=portal_spawner_lights,limit=1] run function mapmaker:portal_spawner/summonlights
execute if block ^ ^ ^-1.4 minecraft:redstone_block run tag @s[tag=!activated] add activated
execute unless block ^ ^ ^-1.4 minecraft:redstone_block run tag @s[tag=activated] remove activated
execute if entity @e[type=minecraft:glow_item_frame,distance=..1.6,tag=indicator,tag=active,limit=1] run setblock ^ ^ ^-1.4 minecraft:redstone_block
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1.6,tag=indicator,tag=active,limit=1] if entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=!active,limit=1] run setblock ^ ^ ^-1.4 minecraft:granite


execute if entity @s[tag=activated,tag=b] run function mapmaker:portal_spawner/activate_blue
execute if entity @s[tag=activated,tag=o] run function mapmaker:portal_spawner/activate_orange




execute if block ^ ^ ^-0.5 minecraft:air run kill @e[type=minecraft:item_display,distance=..0.1,tag=portal_spawner,limit=2]
