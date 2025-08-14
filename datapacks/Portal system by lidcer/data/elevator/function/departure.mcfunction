execute if score elevator_departure time matches 1.. run scoreboard players add elevator_departure time 1

execute if score elevator_departure time matches 3 as @e[type=minecraft:item_display,distance=..5,tag=elevator_vactube,limit=1] at @s run tp @s ~ ~-3.45 ~
execute if score elevator_departure time matches 3 run playsound minecraft:elevator_tube_open_01 ambient @a ~ ~ ~ 0.3 1 0.3

#execute if score elevator_departure time matches 56.. positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4 ~
#execute if score elevator_departure time matches 53..55 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.05 ~
#execute if score elevator_departure time matches 50..52 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.10 ~
#execute if score elevator_departure time matches 47..49 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.15 ~
#execute if score elevator_departure time matches 44..46 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.20 ~
#execute if score elevator_departure time matches 41..43 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.25 ~
#execute if score elevator_departure time matches 38..40 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.30 ~
#execute if score elevator_departure time matches 35..37 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.45 ~
execute if score elevator_departure time matches 1..29 positioned as @a[limit=1] run tp @e[type=minecraft:marker,tag=elepos_temp,limit=1] ~ ~4.5 ~

execute if score elevator_departure time matches 34..39 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.4 ~
execute if score elevator_departure time matches 40..44 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.3 ~
execute if score elevator_departure time matches 45..49 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.2 ~
execute if score elevator_departure time matches 50..54 positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4.1 ~
execute if score elevator_departure time matches 55.. positioned as @a[limit=1] run tp @e[type=marker,tag=elepos_temp,limit=1] ~ ~4 ~



execute if score elevator_departure time matches 70 run title @a times 20 40 10
execute if score elevator_departure time matches 70 run title @a title [{"text":"\ue003","type":"text"}]

execute if score elevator_departure time matches 1.. as @e[distance=..14,tag=elevator] run data modify entity @s Pos[1] set from entity @e[type=minecraft:marker,tag=elepos_temp,limit=1] Pos[1]

execute if score elevator_departure time matches 34 as @e[type=minecraft:item_display,distance=..5,tag=elevator,tag=departure] run data modify entity @s teleport_duration set value 1.1
execute if score elevator_departure time matches 35 run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:air replace minecraft:dark_oak_slab
execute if score elevator_departure time matches 35 run playsound minecraft:elevator_depart_lp_01 ambient @a ~ ~ ~ 0.3 1 0.3


execute if score elevator_departure time matches 130.. run effect clear @a[limit=1] minecraft:slow_falling
execute if score elevator_departure time matches 130.. run kill @e[type=minecraft:marker,tag=elepos_temp,limit=1]

execute if score elevator_departure time matches 130.. at @a[limit=1] run function portal:maps/search

execute if score elevator_departure time matches 130.. run scoreboard players set elevator_departure time 0