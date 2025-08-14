setblock ~ ~ ~ minecraft:amethyst_cluster

#SOUND
execute if entity @s[tag=active] if block ~ ~-2 ~ minecraft:granite run playsound minecraft:laser_node_power_on ambient @a ~ ~1 ~ 0.3 1 0
execute if entity @s[tag=!active] if block ~ ~-2 ~ minecraft:redstone_block run playsound minecraft:laser_node_power_off ambient @a ~ ~1 ~ 0.3 1 0

#INDICATORS

execute if entity @s[tag=active] if entity @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=!active,limit=1] run scoreboard players set indicators.enable buffer 1
execute if entity @s[tag=active] run tag @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=!active,limit=1] add active

execute if entity @s[tag=!active] if entity @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=active,limit=1] run scoreboard players set indicators.disable buffer 1
execute if entity @s[tag=!active] run tag @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=active,limit=1] remove active


#BLOCK
execute if entity @s[tag=active] run setblock ~ ~-2 ~ minecraft:redstone_block
execute if entity @s[tag=!active] run setblock ~ ~-2 ~ minecraft:granite

#ROTATION
execute if entity @s[tag=active] run tp @s ~ ~ ~ ~20 ~


item replace entity @s[tag=!active,tag=!rusted] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=14]
item replace entity @s[tag=active,tag=!rusted] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=149]

item replace entity @s[tag=!active,tag=rusted] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=188]
item replace entity @s[tag=active,tag=rusted] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=189]



#SOUND
execute if entity @s[tag=active] if score sbpg:tick_20 timer matches 1 run playsound minecraft:sp_single_laser ambient @a ~ ~1 ~ 0.3 1 0
