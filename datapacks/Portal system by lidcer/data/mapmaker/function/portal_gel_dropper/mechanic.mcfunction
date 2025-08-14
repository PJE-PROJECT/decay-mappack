execute positioned ~ ~2 ~ if entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=active,limit=1] run setblock ~ ~2.5 ~ minecraft:redstone_block
execute positioned ~ ~2 ~ unless entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=active,limit=1] if entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=!active,limit=1] run setblock ~ ~2.5 ~ minecraft:air

execute if block ~ ~3 ~ minecraft:air run kill @s

execute if block ~ ~4 ~ minecraft:redstone_block run tag @s add active
execute unless block ~ ~4 ~ minecraft:redstone_block run tag @s remove active


execute if entity @s[tag=active] positioned ~ ~2 ~ run function mapmaker:portal_gel_dropper/gel

