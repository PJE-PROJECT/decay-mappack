scoreboard players set #frame n 0
scoreboard players set #maxframe n 26
execute store result score #gametime n run time query gametime
scoreboard players remove #frame n 0
scoreboard players operation #gametime n %= 24000 n
scoreboard players operation #gametime n -= #frame n
scoreboard players operation #gametime n %= #maxframe n
data modify entity @s[tag=empty] item.components."minecraft:custom_model_data" set value 44
data modify entity @s[tag=clean] item.components."minecraft:custom_model_data" set value 46
data modify entity @s[tag=rusted] item.components."minecraft:custom_model_data" set value 48

execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get #gametime n
playsound minecraft:robot_air_release_01 master @a ~ ~ ~ 0.1 1 0
playsound minecraft:robot_high_speed_motor_md_04 master @a ~ ~ ~ 0.1 1 0
scoreboard players set @s animationtime 1
tag @s add arm_anim
tag @s remove closed
tag @s add idle

setblock ~ ~ ~ oak_slab