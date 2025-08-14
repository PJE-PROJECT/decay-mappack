

execute if entity @s[tag=!active] positioned ^ ^ ^0.6 if entity @e[type=minecraft:marker,distance=..0.4,tag=laser_end] run tag @s add active
execute if entity @s[tag=active] positioned ^ ^ ^0.6 unless entity @e[type=minecraft:marker,distance=..0.4,tag=laser_end] run tag @s remove active


execute if entity @s[tag=active,tag=clean] run function mapmaker:portal_laser_catcher/anim_clean
execute if entity @s[tag=active,tag=rusted] run function mapmaker:portal_laser_catcher/anim_rusted


execute if entity @s[tag=active] positioned ^ ^ ^0.57 run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0.00001 1


execute if entity @s[tag=!useless] if block ~ ~-1 ~ minecraft:air run kill @s

execute if entity @s[tag=active] unless block ~ ~-2 ~ minecraft:redstone_block run playsound minecraft:laser_node_power_on ambient @a ~ ~1 ~ 0.3 1 0
execute if entity @s[tag=active] run setblock ~ ~-2 ~ minecraft:redstone_block

execute if entity @s[tag=!active] if block ~ ~-2 ~ minecraft:redstone_block run playsound minecraft:laser_node_power_off ambient @a ~ ~1 ~ 0.3 1 0
execute if entity @s[tag=!active] if block ~ ~-2 ~ minecraft:redstone_block run item replace entity @s[tag=clean] container.0 with netherite_shovel[custom_model_data=3]
execute if entity @s[tag=!active] if block ~ ~-2 ~ minecraft:redstone_block run item replace entity @s[tag=rusted] container.0 with netherite_shovel[custom_model_data=8]
execute if entity @s[tag=!active] run setblock ~ ~-2 ~ minecraft:granite






# INDICATORS

execute if entity @s[tag=active] if entity @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=!active,limit=1] run scoreboard players set indicators.enable buffer 1
execute if entity @s[tag=active] run tag @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=!active,limit=1] add active

execute if entity @s[tag=!active] if entity @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=active,limit=1] run scoreboard players set indicators.disable buffer 1
execute if entity @s[tag=!active] run tag @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=active,limit=1] remove active


execute if entity @s[tag=active] if score sbpg:tick_20 timer matches 1 run playsound minecraft:sp_single_laser ambient @a ~ ~1 ~ 0.3 1 0