scoreboard players set #frame n 0
scoreboard players set #maxframe n 21
execute store result score #gametime n run time query gametime
scoreboard players remove #frame n 0
scoreboard players operation #gametime n %= 24000 n
scoreboard players operation #gametime n -= #frame n
scoreboard players operation #gametime n %= #maxframe n
data modify entity @s[tag=empty] item.components."minecraft:custom_model_data" set value 51
data modify entity @s[tag=clean] item.components."minecraft:custom_model_data" set value 53
data modify entity @s[tag=rusted] item.components."minecraft:custom_model_data" set value 55

execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get #gametime n
scoreboard players set @s animationtime 1
tag @s add arm_anim
tag @s remove idle
tag @s add closed