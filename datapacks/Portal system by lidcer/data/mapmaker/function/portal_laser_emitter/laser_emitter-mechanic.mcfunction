execute positioned ~ ~0.5 ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=active,limit=1] run setblock ^ ^-0.5 ^-1 minecraft:redstone_block
execute positioned ~ ~0.5 ~ unless entity @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=active,limit=1] if entity @e[type=minecraft:glow_item_frame,distance=..1.3,tag=indicator,tag=!active,limit=1] run setblock ^ ^-0.5 ^-1 minecraft:granite

execute if block ^ ^-1 ^ minecraft:air run kill @s


execute if entity @s[tag=!active] if block ^ ^ ^-1 minecraft:redstone_block run playsound minecraft:laser_activation ambient @a ~ ~ ~ 0.3 1 0
execute if entity @s[tag=!active] if block ^ ^ ^-1 minecraft:redstone_block run tag @s add active
execute as @e[type=minecraft:item_display,tag=laser] if score @s laser_ID = @e[tag=laser_emitter,tag=!active,sort=random,limit=1] laser_ID run kill @s
execute as @e[type=minecraft:marker,tag=laser_end] if score @s laser_ID = @e[tag=laser_emitter,tag=!active,sort=random,limit=1] laser_ID run kill @s
execute if entity @s[tag=active] unless block ^ ^ ^-1 minecraft:redstone_block run tag @s remove active

execute if entity @s[tag=active] positioned ^ ^-0.1 ^-0.1 run function laser:laser/raycast