scoreboard players operation #frame n = @s animationtime
scoreboard players set #maxframe n 16
execute store result score #gametime n run time query gametime
scoreboard players operation #gametime n %= 24000 n
scoreboard players operation #gametime n -= #frame n
scoreboard players operation #gametime n %= #maxframe n

execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get #gametime n