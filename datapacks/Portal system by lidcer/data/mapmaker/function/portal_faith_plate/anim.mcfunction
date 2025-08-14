scoreboard players set #frame n 100000
scoreboard players set #maxframe n 100000
execute store result score #gametime n run time query gametime
scoreboard players remove #frame n 3
scoreboard players operation #gametime n %= 24000 n
scoreboard players operation #gametime n -= #frame n
scoreboard players operation #gametime n %= #maxframe n
playsound minecraft:heavy_metal_stop1 master @a ~ ~ ~ 0.2 1 0
execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get #gametime n
scoreboard players set @s animationtime 0
tag @s add plate_anim
tag @s add cooldown