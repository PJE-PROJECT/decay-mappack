execute if entity @e[type=minecraft:item_display,distance=..19,tag=elevator,tag=arrival,limit=1] run function elevator:arrival
execute if entity @e[type=minecraft:item_display,distance=..19,tag=elevator,tag=departure,limit=1] run function elevator:departure


execute if entity @e[distance=..1,tag=departure_elevator_trigger,limit=1] if block ~ ~-1 ~ minecraft:dark_oak_slab if score elevator_departure time matches 0 run function elevator:departure_go

execute if entity @e[distance=..10,tag=departure_elevator_trigger,limit=1] as @e[type=minecraft:item_display,distance=..11,tag=elevator_main,tag=departure,tag=!opened] at @s run function elevator:departure_open

execute as @e[distance=..15,tag=elevator_blade,limit=40] at @s run tp @s ~ ~ ~ ~3 ~