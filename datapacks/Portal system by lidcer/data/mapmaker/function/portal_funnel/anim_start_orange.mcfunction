execute if entity @s[tag=active] run scoreboard players operation #frame n = @s animationtime
execute if entity @s[tag=active] run scoreboard players set #maxframe n 16
execute if entity @s[tag=active] store result score #gametime n run time query gametime
execute if entity @s[tag=active] run scoreboard players add #frame n 16
execute if entity @s[tag=active] run scoreboard players operation #gametime n %= 24000 n
execute if entity @s[tag=active] run scoreboard players operation #gametime n -= #frame n
execute if entity @s[tag=active] run scoreboard players operation #gametime n %= #maxframe n

data modify entity @s[tag=clean] item.components."minecraft:custom_model_data" set value 103
data modify entity @s[tag=rusted] item.components."minecraft:custom_model_data" set value 106
execute if entity @s[tag=active] store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get #gametime n


execute if entity @s[tag=!active] run scoreboard players operation funnel_color buffer = @s animationtime
execute if entity @s[tag=!active] run scoreboard players add funnel_color buffer 8388619
execute if entity @s[tag=!active] store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get funnel_color buffer