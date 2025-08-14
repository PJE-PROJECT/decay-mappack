
execute positioned ~ ~-2 ~ unless block ~ ~ ~ minecraft:granite unless block ~ ~ ~ minecraft:redstone_block run setblock ~ ~ ~ minecraft:granite

#INDICATORS

execute if entity @s[tag=activated] if entity @e[type=minecraft:glow_item_frame,distance=..1.1,tag=indicator,tag=!active] run scoreboard players set indicators.enable buffer 1
execute if entity @s[tag=activated] run tag @e[type=minecraft:glow_item_frame,distance=..1.1,tag=indicator,tag=!active] add active


execute if entity @s[tag=!activated] if entity @e[type=minecraft:glow_item_frame,distance=..1.1,tag=indicator,tag=active] run scoreboard players set indicators.disable buffer 1
execute if entity @s[tag=!activated] run tag @e[type=minecraft:glow_item_frame,distance=..1.1,tag=indicator,tag=active] remove active







execute if entity @s[tag=!activated] run function mapmaker:portal_pedestal_button/noactive
execute if entity @s[tag=activated] run function mapmaker:portal_pedestal_button/active

scoreboard players add @s[tag=activated,tag=!forever] time 1
execute at @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=!useless] run setblock ~ ~ ~ minecraft:iron_bars
execute if block ~ ~-1 ~ minecraft:air run setblock ~ ~ ~ minecraft:air
execute if block ~ ~-1 ~ minecraft:air run kill @s
execute positioned as @e[type=minecraft:armor_stand,tag=button_pedestal,tag=!useless,sort=random,limit=1] if block ~ ~-0.9 ~ minecraft:air run kill @e[type=minecraft:armor_stand,distance=..1,tag=button_pedestal,tag=!useless,sort=nearest,limit=1]
execute positioned as @e[type=minecraft:item_display,tag=button_pedestal,tag=side,tag=!useless,sort=random,limit=1] if block ~ ~-0.9 ~ minecraft:air run kill @e[type=minecraft:item_display,distance=..1,tag=button_pedestal,tag=side,tag=!useless,sort=nearest,limit=1]
