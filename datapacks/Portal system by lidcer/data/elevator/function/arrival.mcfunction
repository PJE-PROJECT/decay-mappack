execute if score elevator_arrival time matches 1.. run scoreboard players add elevator_arrival time 1
execute if score elevator_arrival time matches 1..60 positioned as @a[limit=1] run tp @e[type=minecraft:marker,tag=elepos_temp,limit=1] ~ ~4 ~
execute if score elevator_arrival time matches 61..62 positioned as @a[limit=1] run tp @e[type=minecraft:marker,tag=elepos_temp,limit=1] ~ ~4.1 ~
execute if score elevator_arrival time matches 63..64 positioned as @a[limit=1] run tp @e[type=minecraft:marker,tag=elepos_temp,limit=1] ~ ~4.2 ~
execute if score elevator_arrival time matches 65.. positioned as @a[limit=1] run tp @e[type=minecraft:marker,tag=elepos_temp,limit=1] ~ ~4.5 ~
execute if score elevator_arrival time matches 1.. as @e[distance=..20,tag=elevator] run data modify entity @s Pos[1] set from entity @e[type=minecraft:marker,tag=elepos_temp,limit=1] Pos[1]

execute if score elevator_arrival time matches 70 run tag @e[type=minecraft:item_display,distance=..20,tag=elevator,tag=!arrived] add arrived
execute if score elevator_arrival time matches 70 at @e[type=minecraft:item_display,distance=..20,tag=elevator_main] run fill ^0.5 ^-2 ^-1 ^-1 ^-2 ^-1 minecraft:dark_oak_slab[type=top]
execute if score elevator_arrival time matches 70 run playsound minecraft:elevator_arrive_stop_01 ambient @a ~ ~ ~ 0.6 1 0.6
execute if score elevator_arrival time matches 70 run stopsound @a ambient minecraft:elevator_arrive_01
execute if score elevator_arrival time matches 70 run effect clear @a[limit=1] minecraft:slow_falling
execute if score elevator_arrival time matches 71 as @e[type=minecraft:item_display,distance=..20,tag=elevator_door,tag=arrival,tag=arrived] run data modify entity @s teleport_duration set value 10
execute if score elevator_arrival time matches 85 run playsound minecraft:elevator_door_open_01 ambient @a ~ ~ ~ 0.6 1 0.6
execute if score elevator_arrival time matches 85 as @e[type=minecraft:item_display,distance=..20,tag=elevator_door_r,tag=arrival,tag=arrived] at @s run tp @s ~ ~ ~ ~50 ~
execute if score elevator_arrival time matches 85 as @e[type=minecraft:item_display,distance=..20,tag=elevator_door_l,tag=arrival,tag=arrived] at @s run tp @s ~ ~ ~ ~-50 ~
execute if score elevator_arrival time matches 87 as @e[type=minecraft:item_display,distance=..20,tag=elevator_vactube,limit=1] at @s run tp @s ~ ~3.45 ~
execute if score elevator_arrival time matches 87 run playsound minecraft:elevator_tube_open_01 ambient @a ~ ~ ~ 0.6 1 0.6
execute if score elevator_arrival time matches 87 at @e[type=minecraft:item_display,distance=..20,tag=elevator_main,tag=arrived] run fill ^0.5 ^-3 ^-1.5 ^-1 ^-4 ^-1.5 minecraft:air replace minecraft:barrier
execute if score elevator_arrival time matches 87.. run kill @e[type=minecraft:marker,tag=elepos_temp,limit=1]

execute if score elevator_arrival time matches 87.. run attribute @a[limit=1] minecraft:generic.jump_strength base set 0.415

execute if score elevator_arrival time matches 87.. run scoreboard players set elevator_arrival time 0