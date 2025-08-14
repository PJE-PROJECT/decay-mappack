scoreboard players set #frame n 0
scoreboard players set #maxframe n 21
execute store result score #gametime n run time query gametime
scoreboard players remove #frame n 0
scoreboard players operation #gametime n %= 24000 n
scoreboard players operation #gametime n -= #frame n
scoreboard players operation #gametime n %= #maxframe n

data modify entity @s[tag=clean,tag=!top] item.components."minecraft:custom_model_data" set value 63
data modify entity @s[tag=rusted,tag=!top] item.components."minecraft:custom_model_data" set value 65


data modify entity @s[tag=clean,tag=top] item.components."minecraft:custom_model_data" set value 88
data modify entity @s[tag=rusted,tag=top] item.components."minecraft:custom_model_data" set value 90




execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get #gametime n
scoreboard players set @s animationtime 1
tag @s add arm_anim
tag @s remove idle
tag @s add closed

