scoreboard players set #frame n 2
scoreboard players set #maxframe n 100000
execute store result score #gametime n run time query gametime
scoreboard players remove #frame n 3
scoreboard players operation #gametime n %= 24000 n
scoreboard players operation #gametime n -= #frame n
scoreboard players operation #gametime n %= #maxframe n


item replace entity @s[tag=clean] container.0 with minecraft:potion[minecraft:custom_model_data=26,minecraft:potion_contents={custom_color:0}]
item replace entity @s[tag=dirty] container.0 with minecraft:potion[minecraft:custom_model_data=32,minecraft:potion_contents={custom_color:0}]




execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get #gametime n

playsound minecraft:awake_chamber_door_open_partial ambient @a ~ ~ ~ 2 1 0