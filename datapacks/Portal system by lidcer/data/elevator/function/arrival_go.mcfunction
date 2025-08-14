execute as @e[type=minecraft:item_display,distance=..5,tag=elevator,tag=arrival,tag=!arrived] run data modify entity @s teleport_duration set value 1.1
summon minecraft:marker ~ ~ ~ {Tags:["elepos_temp"]}
#execute as @e[type=item_display,tag=elevator,tag=arrival,tag=!arrived,distance=..5] at @s run tp @s ~ ~-14 ~
scoreboard players set elevator_arrival time 1
playsound minecraft:elevator_arrive_01 ambient @a ~ ~ ~ 0.6 1 0.6
effect give @s minecraft:slow_falling infinite 0 true
attribute @s minecraft:generic.jump_strength base set -1
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:air replace minecraft:barrier