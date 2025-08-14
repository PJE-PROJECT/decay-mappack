execute positioned ^ ^ ^ run kill @e[type=minecraft:item_frame,distance=..0.5,tag=gel,tag=mid,tag=E]

execute positioned ^ ^1 ^ run kill @e[type=minecraft:item_frame,distance=..0.5,tag=gel,tag=end,tag=E,nbt={ItemRotation:0b}]
execute positioned ^ ^-1 ^ run kill @e[type=minecraft:item_frame,distance=..0.5,tag=gel,tag=end,tag=E,nbt={ItemRotation:4b}]
execute positioned ^1 ^ ^ run kill @e[type=minecraft:item_frame,distance=..0.5,tag=gel,tag=end,tag=E,nbt={ItemRotation:2b}]
execute positioned ^-1 ^ ^ run kill @e[type=minecraft:item_frame,distance=..0.5,tag=gel,tag=end,tag=E,nbt={ItemRotation:6b}]


kill @s