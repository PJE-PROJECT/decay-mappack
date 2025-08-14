execute as @e[type=minecraft:item_display,distance=..10,tag=elevator_door,tag=departure] run data modify entity @s teleport_duration set value 10
playsound minecraft:elevator_door_close_01 ambient @a ~ ~ ~ 0.6 1 0.6
execute as @e[type=minecraft:item_display,distance=..5,tag=elevator_door_r,tag=departure] at @s run tp @s ~ ~ ~ ~-50 ~
execute as @e[type=minecraft:item_display,distance=..5,tag=elevator_door_l,tag=departure] at @s run tp @s ~ ~ ~ ~50 ~
summon minecraft:marker ~ ~ ~ {Tags:["elepos_temp"]}
execute at @e[distance=..1,tag=departure_elevator_trigger,limit=1] run fill ^0.1 ^ ^-2 ^-0.1 ^1 ^-2 minecraft:barrier
scoreboard players set elevator_departure time 1
effect give @a[limit=1] minecraft:slow_falling infinite 0 true

kill @e[tag=cube,tag=!hoverignore]
kill @e[tag=sbpg.portal]
function hard_light_bridge:delete