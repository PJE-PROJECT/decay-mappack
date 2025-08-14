execute as @e[type=minecraft:item_display,distance=..10,tag=elevator_door,tag=departure] run data modify entity @s teleport_duration set value 10

execute as @e[type=minecraft:item_display,distance=..5,tag=elevator_vactube,limit=1] at @s run tp @s ~ ~3.45 ~
execute as @e[type=minecraft:item_display,distance=..1,tag=elevator_door_r,tag=departure] at @s run tp @s ~ ~ ~ ~50 ~
execute as @e[type=minecraft:item_display,distance=..1,tag=elevator_door_l,tag=departure] at @s run tp @s ~ ~ ~ ~-50 ~
execute as @e[type=minecraft:item_display,distance=..1,tag=elevator_main,tag=departure] run playsound minecraft:elevator_door_open_01 ambient @a ~ ~ ~ 0.2 1 0
execute as @e[type=minecraft:item_display,distance=..1,tag=elevator_main,tag=departure] run playsound minecraft:elevator_tube_open_01 ambient @a ~ ~ ~ 0.2 1 0
#execute as @e[type=item_display,tag=elevator_main,tag=departure,distance=..1] run fill ^0.1 ^ ^2 ^-0.1 ^1 ^2 barrier
#execute as @e[type=minecraft:item_display,tag=elevator_main,tag=departure] at @s run fill ^0.1 ^-4 ^-1 ^-0.1 ^-3 ^-1 minecraft:air
execute as @e[type=minecraft:item_display,tag=elevator_main,tag=departure] at @s run fill ^0.1 ^-4 ^-0.1 ^-0.1 ^-3 ^-0.1 minecraft:air
#execute as @e[type=item_display,tag=elevator,tag=departure,distance=..1] run data modify entity @s teleport_duration set value 1.1

tag @e[distance=..1,tag=elevator_main] add opened

kill @e[tag=cube]